---
title: "Intro til udvikling på OS2BorgerPC Admin Site"
parent: "Byg og udvikling"
nav_exclude: false
---



### Forudsætninger

For at udvikle på dette projekt skal du have følgende software installeret og konfigureret på din udviklingsmaskine:

1. **Docker**:
   - Docker er nødvendigt for at bygge og køre containerne, der er defineret i compose.yaml-filen.
   - Bekræft installationen er ok, ved at køre:
     ```sh
     docker --version
     ```

2. **Docker Compose**:
   - Docker Compose bruges til at definere og køre multi-container Docker-applikationer.
   - Docker Desktop inkluderer Docker Compose, men hvis du har brug for at installere det separat, følg instruktionerne her: [Installer Docker Compose](https://docs.docker.com/compose/install/)
   - Bekræft installationen ved at køre:
     ```sh
     docker compose --version
     ```

3. **Git**:
   - Git er nødvendigt for versionskontrol og for at klone projektets repository.
   - Bekræft installationen ved at køre:
     ```sh
     git --version
     ```

### Kloning af repository

Når softwarekravene er på plads, kan du klone projektets repository:

```sh
git clone https://github.com/OS2borgerPC/os2borgerpc-admin-site.git
```

### Kørsel af projektet

Kør projektet ved hjælp af Docker Compose. 
```sh
cd os2borgerpc-admin-site
docker compose up
```

Denne kommando vil bygge og starte containerne, der er defineret i 

```sh
compose.yaml
```
### Tilgå webgrænsefladen
En indbygget webserver starter OS2BorgerPC Admin systemets webgrænseflade på port 9999.

I en browser åbn adressen:
```sh
http://localhost:9999
```

Som standard kan du logge ind med brugeren `admin/admin`


## I gang med udvikling

### Vælg udviklingsmiljø (IDE)
Du skal have en editor at programmere i. Et godt bud, der er open source og gratis, er 
Microsofts populære Visual Studio Code (VS Code). Den har god integration til git, og kan stærkt anbefales.

### Lær Django
Rygraden i systemet er open source CMS systemet [Django](https://www.djangoproject.com/).

Man kan ikke udvikle til OS2BorgerPC Admin uden at sætte sig ind i hvordan en Django app grundlæggende fungerer.
Der er heldigvis gode tutorials tilgængelige: [https://www.djangoproject.com/start/](https://www.djangoproject.com/start/)

Man kan også spørge en AI som f. eks. ChatGPT, hvis man har spørgsmål om Django udvikling.
Svarene er som regel gode og præcise, fordi er der så meget åben dokumentation tilgængelig på nettet.

### Versionsstyring med Git
Inden du går i gang med at ændre noget, så opret en ny branch. Det er en dårlig ide at arbejde direkte i main/master branch. 
Du løber ind i problemer, når du vil hente ændringer fra upstream.

### Docker compose tricks

Docker compose bygger et image, starter containere og eksekverer koden i admin-site mappen inde i en container.

Nogle gange bliver ændringer i koden ikke straks synlige i webgrænsefladen.
Andre gange vil du bare gerne starte forfra.

Her er nogle gode kommandoer at kende:

```sh
docker compose up --build
```
Bygger image på ny i forbindelse med opstart

```sh
docker compose stop
docker compose down -v
```
Stopper og sletter alle containerer og volumes - heruden databasen. Dvs. man starter helt forfra.



