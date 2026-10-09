# 🌐 Internet Downloading Adventure

[![Processing](https://img.shields.io/badge/Engine-Processing%203%2F4-blue.svg)](https://processing.org/)
[![Language](https://img.shields.io/badge/Language-Java-orange.svg)](https://www.java.com/)
[![itch.io](https://img.shields.io/badge/itch.io-Play%20Online-FA5C5C.svg)](https://lagosproject.itch.io/internet-downloading-adventure)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

**Internet Downloading Adventure** is a satirical narrative puzzle game built in **Processing** (Java) simulating the chaotic experience of navigating 2000s/2010s internet popups, deceptive "Download" buttons, fake prize giveaways, captchas, and catastrophic Blue Screens of Death (BSOD).

Originally created in early 2019 and published on **[itch.io](https://lagosproject.itch.io/internet-downloading-adventure)**.

---

## 🎮 Concept & Gameplay

- **The Premise**: You are an everyday internet user trying to download a file or claim an elusive prize while surviving a relentless storm of malware traps.
- **Mechanics**:
  - Distinguish genuine buttons from malicious fake "CLAIM" and "DOWNLOAD" ads.
  - Solve tricky captcha challenges (`recaptcha`).
  - Dodge fatal system errors, cascading popup windows, and avoid triggering the dreaded Windows Blue Screen (`pantallaazul.png`).
- **Aesthetic**: Retro desktop environment inspired by Windows, Google Chrome tabs, and early Gmail interfaces.

---

## 🛠️ Project Structure

```text
InternetDownloadingAdventure/
├── InternetDownloadingAdventure/       # Standard Processing sketch directory
│   ├── InternetDownloadingAdventure.pde # Main game loop, states & interaction logic
│   ├── Numero.pde                       # Animated random number generator / background effects
│   └── data/                            # Complete assets folder
│       ├── *.png, *.jpg                 # Popups, buttons, captchas, and error dialogs
│       └── *.vlw                        # Typography (Consolas, Caslon)
├── .gitignore                           # Excludes local exported build directories
├── LICENSE                              # MIT License
└── README.md
```

---

## 🚀 Running the Game

### From Source (Processing IDE)
1. Download and install [Processing 3 or 4](https://processing.org/download).
2. Open `InternetDownloadingAdventure/InternetDownloadingAdventure.pde`.
3. Press **Run** (`Ctrl + R` / `Cmd + R`).

### Standalone Executable (Windows)
Pre-compiled 32-bit and 64-bit Windows standalone packages are available for download on the **[Releases](https://github.com/lagosproject/InternetDownloadingAdventure/releases)** page or on [itch.io](https://lagosproject.itch.io/internet-downloading-adventure).
