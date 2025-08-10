# YoshiTI
**YoshiTI** is a lightweight, colorful GUI shell and launcher for the **TI-84 Plus CE** and **TI-83 Premium CE** calculators. A modern rebrand of Cesium, it offers an intuitive interface to manage, launch, and organize calculator programs with ease.

---

##  Features

- Launch programs regardless of archive status  
- Search via the green-letter key alpha-jump feature  
- Rename programs and AppVars directly from the UI  
- Lock BASIC programs to prevent editing  
- Hide programs from the list for cleaner navigation  
- RAM backup and restore support to keep your data safe  
- Easy filesystem navigation with a sleek interface  

---

## Installation

1. Transfer `YOSHTI.8xp` (or localized versions) to your calculator using **TI-Connect CE**.
2. On your calculator, press `2nd`, then `0` to open the `Asm(` token; choose `YOSHTI` and press **Enter** to install.
3. After installation, you can launch YoshiTI any time via the **apps** button or with the shortcut:  
   **`On` + `PRGM`**

---

## Navigation & Controls

### While running YoshiTI:
| Action | How |
|--------|-----|
| Run or select program | `2nd` or `Enter` |
| Edit BASIC program | `Zoom` |
| Create new BASIC program | `Y=` |
| Rename program/AppVar | `Graph` |
| Enter Settings | `Mode` |
| Move selection | Arrow keys |
| Jump alphabetically | Press key under green letter |

### System shortcuts (TI-OS wide):
| Shortcut | Action |
|----------|--------|
| `On` + `PRGM` | Launch YoshiTI |
| `On` + `STAT` | Power down with wakeup password (if enabled) |
| `On` + `Graph` | Open label jumper in BASIC editor |

---

## Build Instructions

1. Clone the repo:  
   ```bash
   git clone https://github.com/YoshiHack/YoshiTI.git

   bash

   make -j

   
