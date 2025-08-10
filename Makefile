# -------------------------------
# YoshiTI Makefile (fasmg-based)
# -------------------------------
# Build requirements:
#   - fasmg in PATH (or set FASMG to an absolute path)
#   - standard POSIX shell (Git Bash / WSL / macOS / Linux)
#
# Examples:
#   make                 # builds YOSHTI.8xp (english)
#   make english         # same as above
#   make french          # builds bin/YOSHTI-french.8xp
#   make all             # builds all listed languages
#   make clean           # removes bin/*.8xp

# --- Tool paths & project layout ---
FASMG   ?= fasmg
SRC     ?= src/main.asm
OUTDIR  ?= bin
APPNAME ?= YOSHTI

# --- Supported languages for 'all' ---
LANGUAGES ?= english french german spanish italian portuguese dutch polish turkish

# Default build (english, plain name)
.DEFAULT_GOAL := english

# Ensure output dir exists
$(OUTDIR):
	@mkdir -p "$(OUTDIR)"

# --- Primary target: english -> bin/YOSHTI.8xp ---
.PHONY: english
english: $(OUTDIR)/$(APPNAME).8xp

$(OUTDIR)/$(APPNAME).8xp: $(SRC) | $(OUTDIR)
	$(FASMG) "$(SRC)" "$@" -d language:=english

# --- Pattern rule: per-language -> bin/YOSHTI-<lang>.8xp ---
# Use: make <lang>  (e.g., 'make french') to build suffixed artifact.
# If your source expects different language keys, change the mapping below.
$(OUTDIR)/$(APPNAME)-%.8xp: $(SRC) | $(OUTDIR)
	$(FASMG) "$(SRC)" "$@" -d language:=$*

# Convenience phony targets for popular languages
.PHONY: $(LANGUAGES)
$(LANGUAGES): %: $(OUTDIR)/$(APPNAME)-%.8xp

# Build ALL language variants
.PHONY: all
all: $(addprefix $(OUTDIR)/$(APPNAME)-,$(addsuffix .8xp,$(LANGUAGES)))

# Clean
.PHONY: clean
clean:
	@rm -f "$(OUTDIR)/$(APPNAME).8xp" $(addprefix $(OUTDIR)/$(APPNAME)-,$(addsuffix .8xp,$(LANGUAGES)))

# Help
.PHONY: help
help:
	@echo "YoshiTI Makefile"
	@echo "  make / make english     -> $(OUTDIR)/$(APPNAME).8xp (english)"
	@echo "  make <lang>             -> $(OUTDIR)/$(APPNAME)-<lang>.8xp"
	@echo "  make all                -> build all in LANGUAGES"
	@echo "  make clean              -> remove artifacts"
	@echo "Variables you can override: FASMG, SRC, OUTDIR, APPNAME, LANGUAGES"
