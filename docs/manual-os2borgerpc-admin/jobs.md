---
title: Jobs
parent: "Manual: OS2BorgerPC Admin"
nav_exclude: false
---

Job-oversigten giver et overblik over jobs der står i kø samt alle udførte jobs. Den er sorteret med de nyeste jobs først.

## Livscyklus for et Job

Der dukker jobs op i oversigten, når man kører et script eller tilføjer en computer til en gruppe, der har scripts tilknyttet. 

1. Jobs starter i status **Ny**. Det betyder at jobbet ligger i admin-systemet og venter. Alle computere tjekker ind hos admin-systemet hvert 5. minut og "spørger" om der er jobs til dem. Det betyder at der kan gå op til 5 minutter fra man kører et scripts, til computeren modtager ordren.

2. Når jobbet er overdraget til computeren skifter status til **Afsendt**.

3. Når jobbet er blevet eksekveret giver computeren besked til admin-systemet og status skifter til enten **Udført** eller **Fejlet** alt efter om det virkede eller om der opstod fejl.

**Undtagelser**: Jobs der slukker eller genstarter computeren kommer aldrig videre end til status Afsendt. Scriptet bliver udført som det skal, men computeren har ikke mulighed for at svare, da den lukker ned.

---

**Spørgsmål:** Hvorfor skal man vente 5 minutter på at få kørt et script? 

**Svar:** Admin-sitet kan ikke sende jobs ud til computerne. Admin-sitet må vente på at computerne henvender sig, før det kan overlevere de ventende jobs. Skulle kommunikation gå den anden vej, ville det kræve, at der blev givet tilladelse til indgående trafik fra en ekstern server, og den svækkelse af sikkerheden (firewall) vil de færreste IT-afdelinger acceptere.

---

## Joblisten
Joblisten viser script-navn, batchnavn, brugeren som startede jobbet, oprettelsestidspunkt, starttidspunkt, sluttidspunkt, status og computernavn for hvert job, der matcher de valgte filtre. Man kan ændre sorteringen ved at klikke på overskrifterne over tabellen.

Hvis man klikker på det lille ikon til højre på et job i listen, får man vist log-outputtet for det job. Hvis jobbet endnu ikke er blevet eksekvereret, indeholder log-outputtet kun de valgte inputparametre. Hvis jobbet er afsluttet, vil der også være en knap, som man kan trykke på for at genstarte jobbet (dette er primært relevant hvis jobbet fejlede).

## Filtre
Du kan filtrere joblisten ud fra jobstatus. Som standard medtages jobs i alle statusser på nær "Genstartet". Du kan også filtre ud fra batches, computere og grupper. For at filtrere på disse, skal du klikke på den kategori du vil filtrere og efterfølgende klikke på et element i den liste, der bliver foldet ud. Det valgte element vil blive markeret med orange. Det er kun muligt at vælge et element i hver kategori. Du kan nulstille filtrene til standardfiltrene ved at klikke på "Nulstil filtre" i toppen af listen med filtre.