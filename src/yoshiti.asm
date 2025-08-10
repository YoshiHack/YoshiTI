; Copyright 2015-2024 Matt "MateoConLechuga" Waltz
;
; Redistribution and use in source and binary forms, with or without
; modification, are permitted provided that the following conditions are met:
;
; 1. Redistributions of source code must retain the above copyright notice,
;    this list of conditions and the following disclaimer.
;
; 2. Redistributions in binary form must reproduce the above copyright notice,
;    this list of conditions and the following disclaimer in the documentation
;    and/or other materials provided with the distribution.
;
; 3. Neither the name of the copyright holder nor the names of its contributors
;    may be used to endorse or promote products derived from this software
;    without specific prior written permission.
;
; THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
; AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
; IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
; ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
; LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
; CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
; SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
; INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
; CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
; ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
; POSSIBILITY OF SUCH DAMAGE.

yoshiti_name := 'YoshiTI'
yoshiti_version := '3.7.0'
yoshiti_copyright := '(C)  2015-2025  Jackson Hughes'

include 'include/macros.inc'

; start by executing the installer code
; this is run once in order to create the application
include 'installer.asm'

; this is the start of the actual application
	app_start yoshiti_name, yoshiti_copyright
yoshiti_start:
	yoshiti_code.run

relocate yoshiti_code, ti.pixelShadow
	include 'main.asm'
	include 'exit.asm'
	include 'edit.asm'
	include 'search.asm'
	include 'view-vat-items.asm'
	include 'view-apps.asm'
	include 'view-usb.asm'
	include 'features.asm'
	include 'settings.asm'
	include 'gui.asm'
	include 'lcd.asm'
	include 'libload.asm'
	include 'usb.asm'
	include 'find.asm'
	include 'sort.asm'
	include 'luts.asm'
	include 'ports.asm'
	include 'sprites.asm'
	include 'util.asm'
	include 'strings.asm'
end relocate

; we want to keep these things in flash
include 'execute.asm'
include 'flash.asm'
include 'hooks.asm'
include 'data.asm'

macro print_size msg, offset
	display msg
	repeat 1,x:offset
		display `x, 10
	end repeat
end macro

print_size "yoshiti_code.length: ", yoshiti_code.length
