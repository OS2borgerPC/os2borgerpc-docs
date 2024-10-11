---
title: "OS2borgerPC - Sæt musehastighed"
parent: "OS2BorgerPC"
source: /assets/os2borgerpc-scripts/os2borgerpc/os2borgerpc/dconf_mouse_set_speed.sh
parameters:
  - name: "Musehastighed"
    type: "string"
    default: null
    mandatory: true
compatible_versions:
  - "Ubuntu 22.04"
compatible_images:
  - "OS2BorgerPC"
---

## Beskrivelse
Sætter musens hastighed.

Scriptet tager øjeblikkelig effekt så snart scriptet står som "Udført".

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
Scriptet tager ét inputparameter, som er et tal ml. -1 og 1.

Tallet 0 er standardindstillingen.
Negative tal er LAVERE hastighed end standard. 
Positive tal er HØJERE hastighed end standard.

Eksempler:
-0.69117647058823528
0.47829485728172847

