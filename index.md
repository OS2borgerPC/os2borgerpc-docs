---
title: Om OS2BorgerPC
layout: home
nav_order: 1
---

## Hvad er OS2borgerPC?

OS2BorgerPC er en open-source softwareløsning til de computere, som borgerne bruger på biblioteker, i borgerservice eller andre offentlige steder.

Systemet er designet så borgerne kan udføre nødvendige digitale opgaver som at bruge internettet, arbejde med tekstdokumenter, printe og kommunikere med offentlige myndigheder.

OS2BorgerPC indeholder indbyggede sikkerhedsforanstaltninger, der beskytter brugernes personlige data, herunder automatisk log-ud, automatisk sletning af brugerdata og løbende sikkerhedsmonitorering.

OS2BorgerPC udgør et omkostningseffektivt og driftsstabilt alternativ til licensbaseret software til offentlige arbejdsstationer.



## Sikkerhed frem for alt

Det skal være sikkert for en borger at logge ind på en OS2borgerPC. Af den grund har sikkerhed en meget høj prioritet

- Overvågningsregler kan detektere sikkerhedskritiske hændelser på OS2BorgerPCerne, som medarbejdere kan undersøge og håndtere.
- OS2BorgerPCerne henter automatisk sikkerhedsopdateringer til operativsystemet om natten.
- Adgang til central udrulning af softwareopdateringer via administrationssystemet kan sikre et ensartet og højt sikkerhedsniveau
- På Github er opsat automatisk sikkerhedsovervågning af softwarekomponenter der indgår i produkterne

## Administrationsmodul

- Det webbaserede administrationsmodul giver et samlet overblik over driftsstatus og sikkerhedsadvarsler på alle tilknyttede OS2BorgerPCer. Driftsinformation logges og kan tilgås via et API.

- Fra administrationssystemet er der adgang til et globalt script-katalog med scripts til de mest almindelige tilpasninger af OS2BorgerPC'erne. Hvis en kommune har særlige behov, kan der oprettes lokale scripts, som enten kommunen selv eller dens leverandør har udviklet.

- Via administrationssystemet kan automatisk nedlukning i hverdage, weekender og ferier konfigureres, så der spares på strømmen.

- Administrationsmodulet er opbygget med adskilte sites, så adgangen kan tilpasses kommunens behov for ansvarsopdeling mellem institutioner eller afdelinger.


## OS2BorgerPC Kiosk

OS2BorgerPC Kiosk er en specialudgave af OS2BorgerPC til storskærms-PCer. Virker sammen med Aula komme/gå skærme, OS2Display og andre webbaserede display-løsninger.

Systemet understøtter touch-funktionalitet.

OS2BorgerPC er udviklet så det kræver minimal computerkraft, og kan installeres på små computere, der nemt kan skjules bag en væghængt skærm.

 

## Print

OS2borgerPC understøtter en bred vifte af printløsninger, og kan bruges sammen med Princh.



## Understøttet hardware

OS2BorgerPC kan installeres på de fleste computere, der understøtter Linux. Lenovo-computere i forskellige udgaver er hyppigt anvendt. Også Intel NUC er populær som OS2BorgerPC.

Fordi OS2BorgerPC kræver mindre computerkraft og harddiskplads end Windows, kan det også køre på ældre hardware. For eksempel genbruger nogle kommuner administrative computere til OS2Borgerpc.

Ofte kan hardwareproblemer ikke henføres til en computer-model alene.  BIOS-indstillinger og samspillet med skærm og andre eksterne enheder kan også være årsagen. Med support fra leverandøren vil fejl ofte kunne opklares og løses.

Vælger man et driftssetup med meget forskelligt og blandet hardware, må man imødese flere driftsudfordringer end ved en mere ensartet hardware-bestykning.

Står man overfor at skulle indkøbe mange nye BorgerPCer, kan det anbefales, at lave en prøveinstallation og idriftsætning af 2-3 maskiner, hvor man verificerer at alt virker efter hensigten.

 

## Netværkskrav

OS2BorgerPC stiller ingen særlige krav til netværkskonfiguration eller portåbninger hos kunden. BorgerPCer kan fint stå på et beskyttet netværk, hvor der kun er åbnet for udgående trafik på http/https. Der stilles ingen krav om faste IP adresser. DHCP tildelte ip-adresser fungerer fint.



## Releasecyklus

OS2BorgerPC er bygget oven på Ubuntu Linux. Det er altid Ubuntus LTS versioner (Long Term Support),  der danner basis for nye OS2BorgerPC versioner.

Koordinationsgruppen igangsætter udvikling af nye OS2BorgerPC versioner, så man I god tid inden Ubuntus end-of-life kan opgradere til en ny version.

Ikke alle Ubuntu LTS versioner bliver til nye OS2BorgerPC versioner, hvis det er unødvendigt i forhold til at opnå end-of-life dækning.



## Distribution

OS2borgerPC distribueres som et installerbart image. Vejledningen dækker installation via USB-stick.
