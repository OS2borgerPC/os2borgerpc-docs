---
title: "OS2borgerPC Kiosk - Installer SSH og VNC"
parent: "Kiosk"
source: /assets/os2borgerpc-scripts/os2borgerpc/os2borgerpc_kiosk/vnc_and_ssh_install.sh
parameters:
  - name: "VNC kodeord"
    type: "string"
    default: null
    mandatory: true
compatible_versions: 
  - "Ubuntu 22.04"
compatible_images:
  - "OS2BorgerPC Kiosk"
---

## Beskrivelse
Installer SSH og VNC for fjernadgang. 

Du kan lave SSH-forbindelse med det almindelige Unix-password.

Giv VNC-kodeordet med som parameter.

Dette script er blevet testet og virker på Ubuntu 22.04.