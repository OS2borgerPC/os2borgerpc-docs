---
title: "Erfaringer fra Sønderborg Kommune"
parent: "Installation og drift"
nav_exclude: false
nav_order: 50
---

Sønderborg Kommune har gennem mere end fem år haft gode erfaringer med selv at hoste OS2BorgerPC Administrationssitet.  

## Enkel lokal drift
Det er forholdsvis enkelt at drive et OS2BorgerPC Administrationssite lokalt – for eksempel på en VMWare-server eller en tilsvarende platform.  
Når først serveren er etableret, kører den driftssikkert og kræver kun minimal vedligeholdelse ud over løbende sikkerhedsopdateringer af operativsystemet.  

## Fordele ved intern placering
I Sønderborg Kommune har vi valgt at placere serveren på et internt netværk frem for at gøre den tilgængelig via internettet.  
Dette valg forenkler den overordnede sikkerhedsadministration.  
Det er kun omkring fem medarbejdere, der har behov for adgang til systemet, og deres behov for fjernadgang håndteres sikkert via VPN.  

## Uafhængig drift af BorgerPC-maskiner
Opstår der en situation, hvor administrationssitet er utilgængeligt på grund af netværksudfald eller planlagt vedligeholdelse, påvirker det ikke driften af selve BorgerPC-maskinerne.  
Disse fungerer uafhængigt og fortsætter som normalt, selv hvis serveren midlertidigt er nede.  
Derfor vil eksempelvis biblioteker eller jobcentre ikke opleve forstyrrelser, hvis der opstår en teknisk fejl på serveren.


 