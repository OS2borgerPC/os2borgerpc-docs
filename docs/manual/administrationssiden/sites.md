---
title: Sites
parent: "Administrationssiden"
nav_exclude: false
---

## Sites-oversigten
I sites-oversigten ser du de sites, som du har adgang til. En kunde-admin har adgang til alle sites, mens andre brugere kun har adgang til de sites, som de er blevet tilføjet til. 
Kunde-admins kan slette / oprette sites via sites-oversigten.

I toppen af oversigten vises der noget generel information om de sites, som du har adgang til.

- **Sites**: Samlet antal sites, som du har adgang til
- **Computere i alt**: Samlet antal computere registreret på de sites, som du har adgang til
- **Aktiveret**: Samlet antal aktiverede computere på de sites, som du har adgang til
- **Online**: Samlet antal online computere på de sites, som du har adgang til
- **OS2borgerPC**: Samlet antal OS2borgerPC computere (ikke kiosk) på de sites, som du har adgang til
- **OS2borgerPC Kiosk**: Samlet antal OS2borgerPC kiosk computere på de sites, som du har adgang til
- **20.04, 22.04, 24.04, ...**: Samlet antal computere med hver Ubuntu version på de sites, som du har adgang til

## Sletning af site

{: .note }
HUSK: Kun kunde-admins kan slette et site!

For at starte processen med at slette et site, skal du klikke på dropdown-symbolet i højre side af knappen for det site og derefter på **Slet site**. Bemærk at hvis der er 5 eller flere computere registreret på sitet, vil "Slet site"-knappen være inaktiv, og sletning vil ikke være muligt. Du vil så være nødt til manuelt at fjerne computere fra sitet, før at sletning er muligt. Computerne kan fjernes via computer-oversigten for det site. 

Når du klikker på knappen "Slet site", vil du blive omdirigeret til en ny side, som vil informere dig om konsekvenserne ved at slette sitet. Du skal sætte hak i et afkrydsningsfelt, som indikerer, at du forstår og accepterer konsekvenserne ved at slette sitet, før at du kan klikke "Bekræft sletning" for at færdiggøre sletningen.

## Oprettelse af nyt site
{: .note }
HUSK: Kun kunde-admins kan oprette nye sites!

Hvis du ønsker at oprette et nyt site, skal du klikke på knappen **Tilføj nyt site**, som kun er synlig for kunde-admins. Dette vil åbne en dialog, hvor du skal angive et navn og et unikt UID for sitet. Bemærk at UID'et skal bruges i forbindelse med registrering af computere på sitet. Vi foreslår derfor værdier uden mellemrum/specialtegn/store bogstaver som er lette at indtaste. Dialogen vil indikere, hvorvidt det valgte UID er unikt. Hvis det valgte UID ikke er unikt, vil "Opret site"-knappen i bunden af dialogen være inaktiv. Når du klikker på "Opret site", vil du blive sendt tilbage til sites-oversgiten, hvor det vil være muligt at vælge det nye site.

Når du har oprettet et nyt site, kan du oprette nye brugere for sitet eller tilføje eksisterende brugere til sitet via sektionen "Brugere" for det site. Se dokumentationen omkring "Brugere" for mere information.
