---
title: Konfigurationer
parent: "Manual til OS2BorgerPC Admin"
nav_exclude: false
---


### Slet eller rediger ikke konfigurationer, medmindre du er sikker på, hvad du gør!
\
**Konfigurationer er henvendt til systemadministratorer og scriptudviklere, og derfor ikke relevant for de fleste.**


Konfigurationer findes på tre niveauer:

1. **Site-konfigurationer**\
Disse konfigurationsparametre gælder for alle computere, der er tilknyttet det valgte site.
Site-konfigurationerne kan overstyres via tilpassede konfigurationsnøgler/værdier på grupper og på de enkelte computere.

2. **Gruppe-konfigurationer**\
Ændringer for konfigurationer på en gruppe vil påvirke alle computere, der er medlem af gruppen, medmindre den pågældende konfigurationsnøgle er blevet special-tilpasset på den enkelte computer.

3. **Computer-konfigurationer**\
Konfigurationer angivet på en computer vil altid tage præcedens over site-konfigurationer eller konfigurationer på grupper som computeren er medlem af.

Klik på knappen **Tilføj konfiguration** for at tilføje en ny konfigurationsnøgle/værdi.
For at rette eller slette en værdi, skal du klikke på **Redigér** eller **Slet** ud for den enkelte nøgle.

### Betydningen af de indbyggede konfigurationer
Alle værdier uden _ foran bestemmes af adminsitet, mens værdier med _ bestemmes af computeren / klienten.
Det vil i praksis sige, at hvis man eks. ændrer os2borgerpc_version på computeren, så vil den blive overskrevet efter næste tjek-ind med adminsitet.

### Klientversionen styres via en konfiguration

OS2BorgerPC og OS2BorgerPC Kiosk installationer kommunikerer med administrationssiden via en klient kaldet <a href="https://github.com/os2borgerpc/os2borgerpc-client" target="_blank" rel="noopener">OS2BorgerPC-client.</a>

Som standard er OS2BorgerPC og OS2BorgerPC Kiosk installationer sat op til automatisk at tjekke for opdateringer af klienten og installere nyere versioner, hvis de findes.

Den aktuelt installerede version af OS2BorgerPC-client på en enhed kan findes under nøglen **_os2borgerpc.client_version**.

![Installeret version af os2borgerpc-client](https://github.com/user-attachments/assets/34215b53-fbab-4de0-9644-bf2a4c49b772)

*Installeret version af os2borgerpc-client*


## Manuel styring af version
Det er muligt at styre, hvilken version af OS2BorgerPC-client der bruges på en enhed, ved at konfigurere nøglen **os2borgerpc_client_version**.

Denne indstilling kan angives på følgende niveauer:

1. Computer-specifik konfiguration
2. Gruppe-konfiguration
3. Site-konfiguration

Konfigurationerne prioriteres i nævnte rækkefølge.

![Ønsket version af os2borgerpc-client](/assets/images/manual/os2borgerpc-client_desired.png)

Hvis denne konfiguration ikke er angivet, vil systemet automatisk tjekke for opdateringer som beskrevet ovenfor.
