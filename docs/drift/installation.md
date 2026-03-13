---
title: "Installation"
parent: "For driftsleverandører"
nav_exclude: false
nav_order: 0
---

## Kom godt i gang med OS2BorgerPC Admin
<p class="fs-6 fw-300">
Download og installer den nyeste version af OS2BorgerPC administrationsløsningen til opsætning, styring og vedligehold af jeres OS2BorgerPC-maskiner.
</p>

---

## Download OS2BorgerPC Admin installationspakke

Den nyeste version af **OS2BorgerPC Admin installationspakken** kan downloades som en tar.gz-pakke via nedenstående link:

[Download OS2BorgerPC Admin installationspakken](https://github.com/OS2borgerPC/os2borgerpc-admin-site-deployment/releases/latest){: .btn .btn-blue }

---

## Installationsvejledning
Installationspakken er testet på Ubuntu Server 22.04 og 24.04.

### 1. Forudsætninger
Før du begynder, skal du sikre dig, at følgende er installeret på dit system:
1. **Docker**: Installer [Docker Engine](https://docs.docker.com/engine/install/) (version 20.10 eller nyere). Sørg for at den bruger, som du vil installere med, har de nødvendige rettigheder til at køre Docker-kommandoer ved at gøre brugeren til medlem af `docker`-gruppen).

2. **Docker Compose**: [Installer Docker Compose v2](https://docs.docker.com/compose/install/linux/).

3. **Task**: Installer [Taskfile](https://taskfile.dev/#/installation). Task er et automatiseringsværktøj som som installationspakken bygger på.

Kør følgende kommandoer for at verificere, at forudsætningerne er installeret:

```bash
# Kontroller Docker-installation
docker --version

# Kontroller Docker Compose-installation
docker compose version

# Kontroller Taskfile CLI-installation
task --version
```

### 2. Download og udpak
Download OS2BorgerPC Admin installationspakken. [Her er link til seneste release.](https://github.com/OS2borgerPC/os2borgerpc-admin-site-deployment/releases/latest)
 
Udpak den downloadede fil:

```bash
tar -xvzf <FILNAVN>.tar.gz
```
Omdøb mappen så versionsnummeret fjernes. Omdøb f. eks. fra `os2borgerpc-admin-site-deployment-1.2.1` til `os2borgerpc-admin-site-deployment`.

Alternativt kan projektet hentes ned via git clone.

```bash
git clone https://github.com/OS2borgerPC/os2borgerpc-admin-site-deployment.git
```

### 3. Opret lokal konfigurationsfil
Der skal oprettes en konfigurationsfil (`.env`) med lokale systemindstillinger.

```bash
# Gå ind i mappen
cd os2borgerpc-admin-site-deployment
```

Kopier filen `.env.example.` til `.env`.

```bash
cp .env.example .env
```

Åbn `.env` i en text editor som f. eks. `nano`.

```bash
nano .env
```
Tilret indstillinger til jeres lokale forhold.
Som minimum skal disse indstillinger ændres.
- `DOMAIN`: Dit domænenavn som skal matche dit SSL certifikat
- `DB_PASSWORD`: Angiv et stærkt password
- `SECRET_KEY`: Angiv en stærk nøgle.
- `ALLOWED_HOSTS`: Begræns hvilke domæner/ip-adresser der skal have adgang til admin-site, hvis det er på internettet.

Her er en [oversigt over alle systemindstillinger](https://os2borgerpc.github.io/os2borgerpc-docs/docs/installation-og-drift/#oversigt-over-systemindstillinger).

### 4. Læg SSL certifikatet ind

For at sikre korrekt funktionalitet skal du angive et gyldigt domænenavn og et SSL-certifikat.

Trin til konfiguration af sikker tilstand:
1. Skaf et gyldigt SSL-certifikat og en privat nøgle i PEM format.  
2. Placer certifikatfilen (`nginx.crt`) og den private nøglefil (`nginx.key`) i mappen `traefik/ssl`.  
 
### 5. Installation med task

Start installationsscriptet. 

```bash
# Gå ind i mappen
cd os2borgerpc-admin-site-deployment
```

Man installerer ved at køre denne kommando:

```bash
task install
```

Tast `yes` for at fortsætte.

```bash
====================================================
Pre-installation Requirements
====================================================

To proceed with the installation, ensure the following steps are completed:
1. Update '.env'. Change at least DOMAIN, DB_PASSWORD and SECRET_KEY.
2. Place your SSL certificate files ('nginx.crt' and 'nginx.key') in the 'ssl' directory.

Have you completed the above pre-installation steps? (yes/no)

```

Installationen kører færdig uden yderligere interaktion.

Til slut vises info om, hvordan du logger ind. Det der vises afhænger af dine indstillinger i `.env`:

```bash
====================================================
OS2Borgerpc Admin is now available via the URLs below
====================================================
Admin: https://demo.os2borgerpc.dk
Django Backend: https://demo.os2borgerpc.dk/admin
====================================================
You can log in with the following credentials:
Username: admin
Password: admin
====================================================
IMPORTANT: Please change the password of the admin user right away.
You can do this from the menu item 'Brugere' in the main menu of OS2BorgerPC Admin.
====================================================

```
### 6. Skift adgangskode for admin-brugeren
Straks efter installation skal du ændre admin-brugerens adgangskode.
1. Log ind i OS2BorgerPC administrationsportalen
2. Tryk på menupunktet *Brugere* i hovedmenuen
3. Skift adgangskoden for admin-brugeren

---

### Oversigt over systemindstillinger

| Variabel                     | Forklaring                                                                 | Standardværdi                                           | Påkrævet |
|------------------------------|----------------------------------------------------------------------------|-------------------------------------------------------|----------|
| `DOMAIN`                     | Domænenavn for applikationen                                              | `demo.os2borgerpc.dk`                                                 | Ja       |
| `VERSION`                    | Version af applikationen. Find versionsnummer for seneste version her: https://github.com/OS2borgerPC/os2borgerpc-admin-site/releases                                                  | `7.0.1`                                                 | Ja       |
| `DB_HOST`                    | Databasevært                                                               | `db`                                                  | Ja       |
| `DB_NAME`                    | Navn på databasen                                                          | `bpc`                                                 | Ja       |
| `DB_USER`                    | Brugernavn til databasen                                                   | `bpc`                                                 | Ja       |
| `DB_PASSWORD`                | Adgangskode til databasen                                                  | `bpc`                                                 | Ja       |
| `DB_PORT`                    | Databaseport                                                               | Ingen                                                 | Nej      |
| `ALLOWED_HOSTS`              | Hvis din applikation er tilgængelig via internettet, kan adgangen begrænses til enheder fra dit netværk. Tilføj dine offentlige udgående IP-adresse til ALLOWED_HOSTS. Andre, der forsøger at forbinde, vil få et 404 svar.                                                  | `*`                                                   | Ja       |
| `CORE_SCRIPT_VERSION_TAG`    | Version af de globale scripts. Find versionsmummer for seneste version her: https://github.com/OS2borgerPC/os2borgerpc-core-scripts/releases                                              | `v1.0.1`                                              | Ja       |
| `CORE_SCRIPT_COMMIT_HASH`    | Hver version af globale scripts har et matchende commit-hash. Find det i release beskrivelsen her: https://github.com/OS2borgerPC/os2borgerpc-core-scripts/releases                                          | `a96d19567bf5c002c76d16cf80f6c894c2af499`             | Ja       |
| `PC_IMAGE_RELEASES_URL`      | URL til download af BorgerPC ISO images                                    | `https://github.com/OS2borgerPC/os2borgerpc-image/releases` | Nej      |
| `KIOSK_IMAGE_RELEASES_URL`   | URL til download af Kiosk ISO images                                       | `https://github.com/OS2borgerPC/os2borgerpc-kiosk-image/releases` | Nej      |
| `DEBUG`                      | Aktiverer debug-tilstand i Django                                          | `False`                                                | Nej      |
| `SECRET_KEY`                 | Hemmelig nøgle til Django                                                  | `v3rys1kr3t`                                          | Ja       |
| `ADMIN_USERNAME`             | Brugernavn for admin-bruger                                                | `admin`                                               | Ja       |
| `ADMIN_EMAIL`                | Email for admin-bruger. Kan ændres i GUI efter installation (Hovedmenu > Brugere).                                                     | `os2borgerpc_admin@os2borgerpc-vendor.example`        | Ja       |
| `ADMIN_PASSWORD`             | Adgangskode for admin-bruger. Ændres i GUI efter installation (Hovedmenu > Brugere).                                              | `admin`                                               | Ja       |
| `TIME_ZONE`                  | Tidszone for applikationen                                                 | `Europe/Copenhagen`                                   | Ja       |
| `LANGUAGE_CODE`              | Sprogkode for applikationen                                                | `da-dk`                                               | Ja       |
| `INITIALIZE_DATABASE`        | Initialiserer databasen ved første kørsel                                  | `True`                                                | Nej      |
| `LOG_LEVEL`                  | Logniveau for applikationen                                                | `INFO`                                                | Nej      |
| `CICERO_URL`                 | URL for Cicero-server                                                      | `CICERO_SERVER_HERE`                                  | Nej      |
| `CITIZEN_LOGIN_API_VALIDATOR`| Validator for citizen login API                                            | `system.utils.always_validate_citizen`               | Nej      |
| `USE_X_FORWARDED_HOST`       | Aktiverer brug af `X-Forwarded-Host` header bag proxy                      | `True`                                                | Nej      |
| `SECURE_PROXY_SSL_HEADER`    | Header til at indikere SSL bag proxy                                       | `('HTTP_X_FORWARDED_PROTO', 'https')`                | Nej      |
| `HTTPS_GUARANTEED`           | Aktiverer middleware for behandling af HTTP som HTTPS bag en proxy. Sæt til `true` hvis du er bag en reverse proxy, der håndterer SSL. | `false`                                               | Nej      |


---
