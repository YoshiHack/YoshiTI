# YoshiTI

YoshiTI is a shell for the TI-84 Plus CE / TI-83 Premium CE calculators.

![screenshot programs](https://github.com/mateoconlechuga/yoshiti/blob/master/screenshots/screenshot_prgms.png?raw=true)
![screenshot apps](https://github.com/mateoconlechuga/yoshiti/blob/master/screenshots/screenshot_app.png?raw=true)

YoshiTI is installed by running the `YOSHITI` program.
This creates an application that can be accessed via the `apps` button.
The application cannot be transferred to other calculators, however the
installer can be used instead.

A video showing off various features is available [here](https://youtu.be/hZDzV1CDN3k).

## Navigation

YoshiTI supports alpha search for programs.
Use any key with the green text above it to immediately switch to the programs
starting with the corresponding letter.

| Combination     | Action                   |
|-----------------|--------------------------|
| `2nd` / `enter` | Run, select              |
| `alpha`         | Modify variable settings |
| `zoom`          | Edit BASIC program       |
| `y=`            | Create new BASIC program |
| `graph`         | Rename program / appvar  |
| `mode`          | Enter settings menu      |
| `arrow keys`    | Move places              |
| `green letters` | Alpha search for program |

## Shortcuts

Shortcuts are available from outside the YoshiTI application.

| Combination    | Action                                                 |
|----------------|--------------------------------------------------------|
| `on` + `prgm`  | Launch YoshiTI Application                              |
| `on` + `stat`  | Power down with password on wake (No Default Password) |
| `on` + `graph` | Open label jumper in TI-Basic Editor                   |
| `on` + `8`     | Backup RAM from TI-OS                                  |
| `on` + `5`     | Remove latest RAM backup                               |
| `on` + `2`     | Restore RAM from latest backup                         |
| `on` + `sto->` | Activate dark mode (inverted colors)                   |
| `on` + `ln`    | Activate normal mode (uninverted colors)               |

The RAM backup is performed by copying RAM contents to flash memory, so if
you are concerned about flash wear, please moderate usage.

## USB Support

YoshiTI has support for launching and transfering files on FAT32 formatted drive.
Future additions may be added depending on reported usage and feature requests
in the issues board on GitHub.

To transfer a variable from the drive to the calculator, use the `prgm` button.
Running a program from the drive directly may not work -- and may crash your
calculator if the program does any of the following:

* The program requires subprograms and/or AppVars in order to run.
  You must transfer all subprograms/AppVars to the calculator.
* The program uses an outdated compression mode for assembly and C applications.
  There is no way around this other than updating the application or transfering
  the program to the calculator.
* The program modifies itself at runtime. This only applies to rare assembly and
  C applications, and usually will never be encountered.
  Transfer the application to the calculator.

To avoid crashes it is recommended to simply transfer the file with the `prgm`
button instead.

## Uninstalling

To uninstall YoshiTI in the event a new version is warranted, press
`2nd` + `+` + `2` + `1` and delete the YoshiTI application and AppVar.
You can also delete the YoshiTI application from within YoshiTI.

## Building

Clone with the following:

    git clone https://github.com/mateoconlechuga/yoshiti.git

Download fasmg, available near the bottom of [this page](https://flatassembler.net/download.php).
Place fasmg in the project root or add it to the global path.

Build with the command:

    make -j

Individual languages can be built by running the below command, substituting the supported language:

    make english -j

## Bug Reports and Feature Requests

Make a bug report [here](https://github.com/mateoconlechuga/yoshiti/issues).

Source code is available [here](https://github.com/mateoconlechuga/yoshiti).

If you encounter a bug, no matter how small, please report it.

## Language Translations

If you would like to add support for another language, feel free to make a PR.

**French**: Created by Adrien "Adriweb" Bertrand

**Dutch**: Created by Privacy_Dragon

**Italian**: Created by Valerio "Nutpile" Casalino

## Credits

© 2015 - 2024 Matt "MateoConLechuga" Waltz

Licensed under BSD 3 Clause.
