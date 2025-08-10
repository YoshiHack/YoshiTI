# -----------------------------------------
# YoshiTI (ASM) — CEdev-compatible Makefile
# -----------------------------------------
# Requires:
#   - CEdev installed and CEDEV env var set
#   - fasmg in PATH (or set FASMG below)

# App/program metadata
NAME        := YOSHTI
DESCRIPTION := "YoshiTI shell"
ICON        :=           # (optional: path to a PNG icon)
COMPRESSED  := YES
ARCHIVED    := YES

# Sources
ASM_SRCS := src/main.asm

# Tools
FASMG    ?= fasmg

# IMPORTANT: fasmg source expects a *global* language symbol like \english
# Using \\ so the child process sees a single backslash.
ASMFLAGS := -i "language := \\english"

# Include path for any .inc files (adjust if needed)
INCLUDES := include

# Extra include flags for fasmg (fasmg uses its own include syntax, but we keep this for clarity)
# (No-op here; keep the variable for future use)
ASMINC   :=

# Output directory
BINDIR   := bin

# Primary target: build the program (produces bin/YOSHTI.8xp)
.PHONY: all
all: $(BINDIR)/$(NAME).8xp

$(BINDIR):
	@mkdir -p "$(BINDIR)"

# Assemble with fasmg
$(BINDIR)/$(NAME).8xp: $(ASM_SRCS) | $(BINDIR)
	$(FASMG) "src/main.asm" "$@" $(ASMFLAGS)

# Language convenience targets (build e.g. bin/YOSHTI-french.8xp via: make french)
LANGUAGES := english french german spanish italian portuguese dutch polish turkish
.PHONY: $(LANGUAGES)
$(LANGUAGES): %: $(BINDIR)/$(NAME)-%.8xp

$(BINDIR)/$(NAME)-%.8xp: $(ASM_SRCS) | $(BINDIR)
	$(FASMG) "src/main.asm" "$@" -i "language := \\$*"

# Clean
.PHONY: clean
clean:
	@rm -f "$(BINDIR)/$(NAME).8xp" $(addprefix $(BINDIR)/$(NAME)-,$(addsuffix .8xp,$(LANGUAGES)))
