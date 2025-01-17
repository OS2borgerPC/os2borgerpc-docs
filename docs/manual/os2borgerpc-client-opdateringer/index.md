---
title: OS2BorgerPC-Client opdateringer
nav_exclude: false
parent: Brugervejledninger
---

OS2BorgerPC og OS2BorgerPC Kiosk installationer kommunikerer med administrationssiden via en klient kaldet <a href="https://github.com/os2borgerpc/os2borgerpc-client" target="_blank" rel="noopener">OS2BorgerPC-client.</a>

Som standard er OS2BorgerPC og OS2BorgerPC Kiosk installationer sat op til automatisk at tjekke for opdateringer af klienten og installere nyere versioner, hvis de findes.

Den aktuelt installerede version af OS2BorgerPC-client på en enhed kan findes under nøglen **_os2borgerpc.client_version**.
![Installeret version af os2borgerpc-client](/assets/images/manual/os2borgerpc-client_installed.png)

## Manuel styring af version
Det er muligt at styre, hvilken version af OS2BorgerPC-client der bruges på en enhed, ved at konfigurere nøglen **os2borgerpc_client_version**.

Denne indstilling kan angives på følgende niveauer:

1. Computer-specifik konfiguration
2. Gruppe-konfiguration
3. Site-konfiguration

Konfigurationerne prioriteres i nævnte rækkefølge.

![Ønsket version af os2borgerpc-client](/assets/images/manual/os2borgerpc-client_desired.png)

Hvis denne konfiguration ikke er angivet, vil systemet automatisk tjekke for opdateringer som beskrevet ovenfor.
