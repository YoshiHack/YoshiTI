#!/usr/bin/env python3
"""
Rebrand script: Cesium -> YoshiTI (case-aware), including file/folder renames.
- Edits only text files (skips binaries).
- Skips common build/IDE and image folders.
- Won't rename or edit itself.
- Has a DRY_RUN toggle and a BACKUP option.

Usage:
  1) Save as rebrand_to_yoshiti.py in the repo root.
  2) (Recommended) Commit or branch first: git checkout -b rebrand-yoshiti
  3) Run: python rebrand_to_yoshiti.py
"""

import os, re, sys
from pathlib import Path
from typing import Iterable

# ---------- Settings ----------
DRY_RUN   = False  # Set True for a preview with no changes
MAKE_BACKUPS = False  # If True, writes a .bak beside any edited file

# Case-aware replacements (order matters: UPPER -> Title -> lower)
REPLACEMENTS = [
    (re.compile(r'\bCESIUM\b'), 'YOSHITI'),
    (re.compile(r'\bCesium\b'), 'YoshiTI'),
    (re.compile(r'\bcesium\b'), 'yoshiti'),
    (re.compile(r'\bCESIUM_'), 'YOSHITI_'),
    (re.compile(r'\bcesium_'), 'yoshiti_'),
]

# Directories to skip entirely
SKIP_DIRS = {
    '.git', '.github', '.idea', '.vscode', '__pycache__',
    'build', 'dist', 'out', 'screenshots'
}

# File extensions treated as binary (will not be edited)
BINARY_EXTS = {
    '.png','.jpg','.jpeg','.gif','.webp','.bmp','.ico',
    '.zip','.7z','.rar','.gz','.bz2','.xz',
    '.pdf','.ttf','.otf','.woff','.woff2',
    '.bin','.obj','.o','.a','.lib','.dll','.exe'
}

ROOT = Path(__file__).parent.resolve()
SELF_NAME = Path(__file__).name

def is_text_file(p: Path) -> bool:
    if p.suffix.lower() in BINARY_EXTS:
        return False
    try:
        with p.open('rb') as f:
            chunk = f.read(4096)
    except Exception:
        return False
    if b'\x00' in chunk:
        return False
    # heuristic: mostly printable?
    printable = sum(c in b'\t\r\n\f\b' or 32 <= c <= 126 for c in chunk)
    ratio = printable / (len(chunk) or 1)
    return ratio > 0.8

def iter_files(root: Path) -> Iterable[Path]:
    for p in root.rglob('*'):
        if p.name in SKIP_DIRS:
            # Let os.walk handle pruning by skipping children when topdown, but rglob can't prune;
            # we'll rely on the parts check below.
            pass
        # skip anything inside a SKIP_DIR
        if any(part in SKIP_DIRS for part in p.parts):
            continue
        if p.is_file():
            yield p

def replace_in_text(content: str) -> str:
    out = content
    for pat, repl in REPLACEMENTS:
        out = pat.sub(repl, out)
    return out

def write_file(p: Path, new_content: str):
    if MAKE_BACKUPS:
        bak = p.with_suffix(p.suffix + '.bak')
        if not DRY_RUN:
            bak.write_text(p.read_text(encoding='utf-8', errors='ignore'), encoding='utf-8')
    if not DRY_RUN:
        p.write_text(new_content, encoding='utf-8')

def new_name_from(old: str) -> str:
    # Apply same case-aware mapping to a single path component
    new = old
    new = new.replace('CESIUM',  'YOSHITI')
    new = new.replace('Cesium',  'YoshiTI')
    new = new.replace('cesium',  'yoshiti')
    return new

def rename_paths(root: Path):
    # Depth-first: rename files before parent dirs
    for dirpath, dirnames, filenames in os.walk(root, topdown=False):
        dp = Path(dirpath)

        # Skip rename inside skipped dirs
        if any(part in SKIP_DIRS for part in dp.parts):
            continue

        # files
        for name in filenames:
            if name == SELF_NAME:
                continue
            oldp = dp / name
            newp = dp / new_name_from(name)
            if newp.name != oldp.name:
                if newp.exists():
                    print(f'[skip exists] {newp}')
                else:
                    print(f'[rename] {oldp} -> {newp}')
                    if not DRY_RUN:
                        oldp.rename(newp)

        # directories
        for name in dirnames:
            if name in SKIP_DIRS:
                continue
            oldd = dp / name
            newd = dp / new_name_from(name)
            if newd.name != oldd.name:
                if newd.exists():
                    print(f'[skip exists] {newd}')
                else:
                    print(f'[rename dir] {oldd} -> {newd}')
                    if not DRY_RUN:
                        oldd.rename(newd)

def main():
    print('== Rebranding Cesium -> YoshiTI ==')
    print(f'ROOT: {ROOT}')
    print(f'DRY_RUN={DRY_RUN}  MAKE_BACKUPS={MAKE_BACKUPS}')
    edited = 0
    for p in iter_files(ROOT):
        if p.name == SELF_NAME:
            continue
        if not is_text_file(p):
            continue
        try:
            content = p.read_text(encoding='utf-8')
        except Exception:
            # Try best-effort with ignore
            try:
                content = p.read_text(encoding='utf-8', errors='ignore')
            except Exception:
                continue
        new_content = replace_in_text(content)
        if new_content != content:
            print(f'[edit] {p}')
            if not DRY_RUN:
                write_file(p, new_content)
            edited += 1
    print(f'Edited files: {edited}')

    print('Renaming files and directories...')
    rename_paths(ROOT)
    print('Done.')

if __name__ == '__main__':
    main()
