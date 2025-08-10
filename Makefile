languages = english french dutch italian

ifeq (release,$(filter release,$(MAKECMDGOALS)))
compress = zx0
endif

all: $(languages)

$(languages):
	mkdir -p build
	fasmg  -i 'language := "$@"' src/cesium.asm build/cesium_$@.8xp
ifneq ($(compress),)
	convbin -k 8xp-compressed -e $(compress) -u -n CESIUM -j 8x -i build/cesium_$@.8xp -o build/cesium_$@.$(compress).8xp
endif

clean:
	rm -rf build

release: | clean all
	mkdir -p build/cesium
	cp $(addsuffix .$(compress).8xp,$(addprefix build/cesium_,$(languages))) build/cesium
	cp readme.md build/cesium/readme.md
	cp creating_icons.md build/cesium/creating_icons.md
	cd build && zip -r9 cesium.zip cesium

.PHONY: all clean release $(languages)
