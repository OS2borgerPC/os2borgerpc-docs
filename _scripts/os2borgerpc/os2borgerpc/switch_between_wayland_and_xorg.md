---
title: "OS2borgerPC - Skift ml. Wayland og Xorg"
category: "OS2BorgerPC"
source: os2borgerpc/os2borgerpc/switch_between_wayland_and_xorg.sh
parameters:
  - name: "Gør Wayland til standard?"
    type: "checkbox"
    default: null
    mandatory: false
compatible_versions:
compatible_images:
  - "OS2BorgerPC"
---

## Beskrivelse
Dette script skifter ml. hvilken "display server" der anvendes.
Specifikt skifter det ml. om der køres Wayland (den nyere standard) eller Xorg (den ældre standard).

På nuværende tidspunkt - image 5.0.0 - er Xorg standard i OS2borgerPC, men planen er at skifte over til Wayland. 
Wayland er nemlig blevet standard i Ubuntu allerede fra 22.04.