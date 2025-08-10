# -------------------------------
# YoshiTI Makefile (fasmg-based)
# -------------------------------
# Requirements:
#   - fasmg in PATH (or set FASMG=./fasmg)
#   - POSIX shell (Git Bash / WSL / macOS / Linux)

FASMG   ?= fasmg
SRC     ?= src/main.asm
OUTDIR  ?= bin
APPNAME ?= YOSHTI

# Languages available for "make all"
LANGUAGES ?= english french german spanish italian portuguese dutch polish turkish

.DEFAULT_GOAL := english

$(OUTDIR):
	@mkdir -p "$(OUTDIR)"

# Default (english) -> bin/YOSHTI.8xp
.PHONY: english
english: $(OUTDIR)/$(APPNAME).8xp

$(OUTDIR)/$(APPNAME).8xp: $(SRC) | $(OUTDIR)
	$(FASMG) "$(SRC)" "$@" -i "language := english"

# Pattern for language variants -> bin/YOSHTI-<lang>.8xp
$(OUTDIR)/$(APPNAME)-%.8xp: $(SRC) | $(OUTDIR)
	$(FASMG) "$(SRC)" "$@" -i "language := $*"

.PHONY: $(LANGUAGES)
$(LANGUAGES): %: $(OUTDIR)/$(APPNAME)-%.8xp

.PHONY: all
all: $(addprefix $(OUTDIR)/$(APPNAME)-,$(addsuffix .8xp,$(LANGUAGES)))

.PHONY: clean
clean:
	@rm -f "$(OUTDIR)/$(APPNAME).8xp" $(addprefix $(OUTDIR)/$(APPNAME)-,$(addsuffix .8xp,$(LANGUAGES)))

.PHONY: help
help:
	@echo "YoshiTI Makefile (fasmg)"
	@echo "  make / make english     -> $(OUTDIR)/$(APPNAME).8xp (english)"
	@echo "  make <lang>             -> $(OUTDIR)/$(APPNAME)-<lang>.8xp"
	@echo "  make all                -> build all languages"
	@echo "  make clean              -> remove artifacts"
