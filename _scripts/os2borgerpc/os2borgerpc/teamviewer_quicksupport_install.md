---
title: "OS2borgerPC - TeamViewer QuickSupport: Add/Remove"
category: "OS2BorgerPC"
source: /assets/os2borgerpc-scripts/os2borgerpc/os2borgerpc/teamviewer_quicksupport_install.sh
parameters:
  - name: "Aktivér"
    type: "checkbox"
    default: null
    mandatory: false
compatible_versions:
  - "Ubuntu 22.04"
compatible_images:
  - "OS2BorgerPC"
partners:
  - "Vordingborg Kommune"
---

## Beskrivelse
Udviklet og testet i samarbejde med Vordingborg kommune.

Installerer QuickSupport-udgaven af TeamViewer. Denne version af TeamViewer er GRATIS / LINCENSFRI. Udgaven er beregnet til parten der modtager support/hjælp.

Når man kører "Desktop - Tilføj/Fjern programgenvej på skrivebordet" så sætter parameteret Program til teamviewer

Forfattere: Heini & Marcus

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
Det script installerer(flueben) eller afinstallerer(intet flueben) QuickSupport-udgaven af TeamViewer.