---
title: "OS2borgerPC - Citrix Workspace App: Set default store"
parent: "OS2BorgerPC"
source: /assets/os2borgerpc-scripts/os2borgerpc/os2borgerpc/citrix_workspace_app_set_default_store.sh
parameters:
  - name: "STORE_NAME"
    type: "string"
    default: null
    mandatory: true
  - name: "DEFAULT_STORE"
    type: "string"
    default: null
    mandatory: true
compatibility:
  - "BorgerPC"
partners:
  - "Vordingborg Kommune"
---

## Beskrivelse
Udviklet og testet i samarbejde med Vordingborg kommune.

Sætter citrix "default store" på en given PC.

Dette script er ikke blevet testet på Ubuntu 22.04. Skriv til os, hvis I oplever problemer.

## Parametre
1) store name
2) default store

