---
title: Grupper
parent: "Manual: OS2BorgerPC Admin"
nav_exclude: false
---

OS2borgerPC-grupper kan bruges til at lave en policy-konfiguration (GPO) for en samling af computere. 

Scripts, overvågningsregler og tænd/sluk tidsplaner kan kobles på en gruppe.

Scripts der er knyttet til en gruppe køres automatisk på nye computere, der indmeldes i gruppen.

Grupper kan f. eks. bruges til at:
- Installere en printer på alle computere på en bestemt lokation
- Skifte startside for computere på en bestemt lokation
- Tilpasse tænd/sluk tider til behovet på en bestemt lokation

En computer kan sagtens tilmeldes flere grupper.
Eksempel: Der står en computer på biblioteket og en anden i borgerservice, som skal have forskellige startsider, men som begge har samme scanner sat til. I så fald kan den ene computer være tilmeldt en gruppe for biblioteket og den anden en gruppe for borgerservice, mens begge er tilmeldt en gruppe for scanner-computere.


## Administration af grupper

Når man klikker på **Grupper** i venstremenuen får man vist en liste over grupper, der er på det site man er på. 

Til højre for gruppelisten vises detaljer for en enkelt gruppe. Du ser ser gruppens navn og beskrivelse samt hvilke computere, der er med i gruppen. Du ser også hvilke ansvarspersoner der er valgt for gruppen.
Ansvarspersoner modtage eventuelle email-advarsler eller notifikationer relateret til computerne i gruppen i stedet for de modtagere, som er valgt på de relevante sikkerhedsregler eller offline-regler.  

Herfra kan du ændre gruppens navn og beskrivelse, samt tilføje eller fjerne computere og ansvarspersoner fra gruppen. Ændringer foretaget på siden træder ikke i kræft før du klikker på **Gem ændringer** i bunden af skærmbilledet.

Hvis ikke der er oprettet nogen grupper for det site man er under, vises information omkring hvordan man opretter en gruppe i stedet.

For at oprette en ny gruppe skal man klikke på **Tilføj ny gruppe** oven over listen med grupper. Så åbner en dialogboks, hvor man skal udfylde navn og beskrivelse for gruppen. Når man klikker på **Opret gruppe** kommer man til redigeringssiden, hvorfra man kan tilføje computere til gruppen.

## Tilknyttede Scripts
Via fanen **Tilknyttede Scripts** kan du knytte scripts til gruppen. 

Tryk på input-feltet **Tilføj script** og søg efter det script, som du gerne vil tilknytte til gruppen. Klik på scriptet og det vil blive tilføjet som tilknyttet script.

Husk at trykke **Rediger** for at angive parameterværdier til scriptet.

Sådan virker tilknyttede scripts:
- Når en computer tilføjes til en gruppe, bliver alle tilknyttede scripts automatisk kørt på den computer. 
- Når man tilknytter et nyt script til en gruppe, køres det automatisk på gruppens computere. 
- Redigering af parametrene for et tilknyttet script medfører at scriptet genkøres på alle computere i gruppen, hvis *Genkør automatisk tilknyttede scripts når I opdaterer deres inputparametre* er valgt under Site-indstillinger. 
- Hvis man fjerner et tilknyttet script fra en gruppe, medfører det IKKE at scriptets effekt fjernes fra computerne i gruppen.
- Tilknyttede scripts bliver kørt i den rækkefælge de er blevet tilføjet i. Dvs. de køres ovenfra og ned.

### Bemærkning ifht. tænd/Sluk tidsplaner
Hvis en gruppe bruges ifht. tænd/sluk tidsplan, sker der et tjek hver gang du tilføjer en ny computer. Systemet undersøger om computeren allerede er tilknyttet gruppe med tænd/sluk tidsplan. Hvis det er tilfældet bliver computeren afvist. En computer må kun være knyttet til en tidsplan ad gangen. 

### Konfigurationer 
Konfigurationer kan også sættes på Gruppe-niveau. [Læs om konfigurationer her](https://os2borgerpc.github.io/os2borgerpc-docs/docs/administrationssiden/konfigurationer.html).


Bemærk, at medlemskab af grupper kan have indflydelse på computerens konfiguration.