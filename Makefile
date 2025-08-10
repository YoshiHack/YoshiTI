# Copyright 2015-2024 Matt "MateoConLechuga" Waltz
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# 1. Redistributions of source code must retain the above copyright notice,
#    this list of conditions and the following disclaimer.
#
# 2. Redistributions in binary form must reproduce the above copyright notice,
#    this list of conditions and the following disclaimer in the documentation
#    and/or other materials provided with the distribution.
#
# 3. Neither the name of the copyright holder nor the names of its contributors
#    may be used to endorse or promote products derived from this software
#    without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.

languages = english french dutch italian

ifeq (release,$(filter release,$(MAKECMDGOALS)))
compress = zx0
endif

all: $(languages)

$(languages):
	mkdir -p build
	fasmg  -i 'language := "$@"' src/yoshiti.asm build/yoshiti_$@.8xp
ifneq ($(compress),)
	convbin -k 8xp-compressed -e $(compress) -u -n YOSHITI -j 8x -i build/yoshiti_$@.8xp -o build/yoshiti_$@.$(compress).8xp
endif

clean:
	rm -rf build

release: | clean all
	mkdir -p build/yoshiti
	cp $(addsuffix .$(compress).8xp,$(addprefix build/yoshiti_,$(languages))) build/yoshiti
	cp readme.md build/yoshiti/readme.md
	cp creating_icons.md build/yoshiti/creating_icons.md
	cd build && zip -r9 yoshiti.zip yoshiti

.PHONY: all clean release $(languages)
