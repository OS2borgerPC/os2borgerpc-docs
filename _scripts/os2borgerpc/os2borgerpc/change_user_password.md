---
title: "OS2borgerPC - Skift kodeord for Borger"
category: "OS2BorgerPC"
source: os2borgerpc/os2borgerpc/change_user_password.sh
parameters:
  - name: "Kodeord"
    type: "password"
    default: null
    mandatory: true
  - name: "Gentag kodeord"
    type: "password"
    default: null
    mandatory: true
compatible_versions:
  - "Ubuntu 22.04"
compatible_images:
  - "OS2BorgerPC"
---

## Beskrivelse
Skifter publikumsbrugerens ("Borger", også kaldet "user") kodeord til det angivne.
Da publikumsbrugeren logger ind automatisk, er det normalt ikke nødvendigt at sætte et kodeord for denne bruger.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
- Kodeord
- Gentag kodeord

