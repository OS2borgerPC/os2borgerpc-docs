---
title: "OS2borgerPC Kiosk - Chromium - Skift startside"
category: "OS2BorgerPC Kiosk"
source: os2borgerpc/os2borgerpc_kiosk/chromium_change_homepage.sh
parameters:
  - name: "URL"
    type: "string"
    default: null
    mandatory: true
compatible_versions:
  - "Ubuntu 22.04"
compatible_images:
  - "OS2BorgerPC Kiosk"
---

## Beskrivelse
Skifter startside i Chromium.

Hvis du oplever scriptet fejle, genkør da OS2borgerPC Kiosk - Autostart Chromium før dette.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1: Hvilken URL der skal være den nye startside.

