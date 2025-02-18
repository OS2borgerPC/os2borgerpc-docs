---
title: Scripts
parent: "Manual: OS2BorgerPC Admin"
nav_exclude: false
---

Når man klikker på "Scripts" i venstremenuen åbner oversigten over globale scripts. Øverst under søgefeltet kan man skifte mellem lokale og globale scripts.

XX indsæt billede

- Globale scripts er fælles på tværs af alle kommuner og de er en del af OS2BorgerPC kerneproduktet. 

- Lokale scripts er kommunens egne scripts. Hvert XXsite har sine egen liste over lokale scripts. Det betyder at man inernt i en kommune kan have adskilte scripts for hvert site man har oprettet. 


{: .note-title }
> Hvad er et script?
>
> Et script er et bash-script eller et python-script som via administrationssiden sendes ud til borgerPCer og eksekveres. Med scripts kan man tilpasse sine borgerPC til > de lokale behov. F. eks. kan man via scripts installere prgrammer, installere printere, ændre startside osv. 
>
> Scripts kan knyttes til XXgrupper. Når en borgerPC knyttes til en gruppe, sendes alle gruppens scripts ud til computeren. Via scripts på grupper kan man lave en policy-konfiguration, der sikrer at alle computere i samme gruppe er ens konfigureret. 
>
> Scripts, som flere kommuner bruger, er indbygget i systemet som globale scripts. Scripts, som er særlige for en kommune, opretter kommunen selv som lokale scripts.

## Globale scripts

For hvert script er der tre faneblade: Detaljer, Kode og Inputparametre

- Fanen detaljer viser scriptets navn og beskrivelse. 
- På fanen kode kan man få adgang til at se scriptets kildekode og downloade scriptet
- På fanen indputparametre kan man se hvilke parametre scriptet kræver, for at kunne køres. F. eks. kræver scriptet "Skift baggrundsbillede på skrivebordet" en billedfil som parameter.

## Eksekvering af scrips
For at køre et script på en computer eller en gruppe af computere skal du klikke på **Scripts** i venstremenuen og vælge det script du vil køre. Bemærk at det kan være nødvendigt at skifte mellem fanerne **Lokale scripts** og **Globale scripts** for at finde det script du leder efter. Når du har valgt det script, du ønsker at køre, skal du klikke på knappen **Kør script**.

Der kommer nu en dialog, hvor du bliver bedt om at vælge de computere og/eller grupper, som du ønsker at eksekvere scriptet på. Klik på den enkelte computer eller gruppe for at vælge/afvælge den. Du kan vælge så mange computere eller grupper, som du ønsker. Øverst findes særlige afkrydsningsfelter, som kan bruges til at vælge/afvælge alle computere eller grupper. Valg af en gruppe vil medføre, at scriptet udføres på samtlige computere der er med i gruppen. Klik på **Næste**, når du har foretaget dine valg.

Du vil nu blive bedt om at udfylde inputparametre for scriptet. Hvis en inputparameter har en standardværdi, vil denne være angivet på forhånd. Værdien kan godt ændres. Udfyld felterne og klik på **Kør** for at starte afviklingen af scriptet. Dette vil medføre, at der bliver oprettet et job for hver computer scriptet udføres på. Du kan klikke på linket i den sidste side i dialogen for at gå til XXJoblisten og følge med i afviklingen af jobs på de enkelte computere.


## Opret lokalt script
For at oprette et nyt script skal du klikke på **Tilføj nyt script** oven over listen med scripts. En dialog åbner, hvor du udfylder scriptets navn, beskrivelse og uploader script-koden. Klik på **Opret Script**.
Nu er scriptet oprettet, men det har ingen inputparametre. Kræver dit script inputparametre, skal du gå til fanen **Inputparamtre** og oprette dem her. Se en liste over mulige typer af inputmarametre.

TIP! Kig på kildekoden til de globale scripts for at finde inspiration til hvordan man laver et script. Du kan downloade kildekoden og bruge den som udgangspunkt for dit eget script, som du derefter uploader til lokale scripts.

## Parameter-typer
Typer inputparametre, man kan vælge imellem:
- **Streng**: Tekst-streng, for eksempel en sti eller en titel.
- **Heltal**: Positivt eller negativt heltal
- **Dato**: Dato med dato-vælger
- **Fil**: Upload en fil, der vil blive sendt med, når scriptet skal eksekveres. Scriptet vil modtage Fil-parametre som en sti i det lokale filsystem, der peger på filen.
- **Afkrydsningsfelt**: Sand/falsk-værdi. Scriptet vil modtage værdien som enten strengen "True" eller strengen "False".
- **Tid**: Tidspunkt
- **Adgangskode**: Fungerer ligesom streng-inputparametertypen bortset fra at den valgte adgangskode vil være skjult i log-outputtet og alle andre steder, hvor de valgte inputparametre vises.
- **Valgmuligheder**: Liste med foruddefinerede valgmuligheder. Nyttig, når du vil begrænse de mulige værdier, der kan leveres som input. For at lave en liste over valg, laver du en kommasepareret liste over værdierne i standardværdifeltet. Valgene vil blive vist i samme rækkefølge, som de er skrevet, og hvis du tilføjer et komma i slutningen eller starten af listen, vil det blive vist som et tomt valg.

Parametre af typerne Streng, Heltal, Dato, Valgmuligheder og Tid kan have **standardværdier**.

Parametre kan oprettes som **påkrævet**. Påkrævede parametre skal udfyldes, når man kører scriptet, mens ikke-påkrævede parametre kan efterlades tomme. 

HUSK! Man skal klikke på knappen **Gem ændringer** nederst på script-redigeringssiden før ændringer foretaget til inputparametre træder i kraft.


