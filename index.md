---
title: Om OS2BorgerPC
layout: home
---

## Hvad er OS2borgerPC?

OS2BorgerPC er en open-source software løsning til computere, der stilles til rådighed for borgere på biblioteker, i borgerservice eller i andre offentlige rum.

Systemet er udformet så borgerne kan udføre nødvendige digitale opgaver, som at bruge internettet, arbejde med et tekstdokument, printe og samarbejde med offentlige myndigheder. 

OS2borgerPC har indbyggede sikkerhedsforanstaltninger, der beskytter brugernes personlige data, som automatisk log-ud, automatisk sletning af brugerdata og omfattende sikkerhedsadvarsler.

OS2borgerPC er et omkostningseffektivt og driftsstabilt alternativ til licensbelagt software til offentligt tilgængelige arbejdsstationer. 



## Sikkerhed frem for alt

Det skal være sikkert for en borger at logge ind på en OS2borgerPC. Af den grund har sikkerhed en meget høj prioritet.

- OS2BorgerPCerne henter automatisk sikkerhedsopdateringer til operativsystemet om natten.

- Adgang til central udrulning af softwareopdateringer via administrationssystemet kan sikre et ensartet og højt sikkerhedsniveau

- Overvågningsregler kan detektere sikkerhedskritiske hændelser på OS2BorgerPCerne, som medarbejdere kan undersøge og håndtere.

- På Github er opsat automatisk sikkerhedsovervågning af softwarekomponenter der indgår i produkterne

- Der er en nedskrevet procedure for håndtering af indberettede sikkerhedsproblematikker.

- Der vedligeholdes specifikationer for en anbefalet pakke af sikkerhedscripts for hver udgave af OS2BorgerPC


## Administrationsmodul

Det webbaserede administrationsmodul giver et samlet overblik over driftsstatus og sikkerhedsadvarsler på alle tilknyttede OS2BorgerPCer. Driftsinformation logges og kan tilgås via et API.

Administrationssystemet er inddelt i sites, så løsningen kan matche kommunens behov for ansvarsfordeling mellem institutioner/afdelinger.

OS2BorgerPCer kan tilknyttes grupper, der definerer script-policy-pakker. Når en pc indmeldes i en gruppe, bliver gruppens scripts udført på den. Derved sikres at OS2BorgerPCer, der er tilmeldt de samme grupper, har den samme tilstand.

Fra administrationssystemet er der adgang til et globalt script-katalog, med scripts til ofte benyttede tilpasninger af OS2BorgerPCerne. Har man i en kommune særlige behov, kan man oprette lokale scripts, som man enten selv eller ens leverandør har programmeret.

Via administrationssystemet kan automatisk nedlukning i hverdage, weekender og ferier konfigureres, så der spares på strømmen.



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



Distribution

OS2borgerPC distribueres som et installerbart image. Vejledningen dækker installation via USB-stick.
