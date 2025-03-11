---
title: "Contribution Guidelines"
parent: "Byg og udvikling"
nav_exclude: false
---

Tak fordi du ønsker at bidrage til Os2BorgerPC! For at sikre en god udviklingsproces, bedes du følge nedenstående retningslinjer.

## Generelle principper
- Vær respektfuld og konstruktiv i din kommunikation.

## GitHub Flow
Dette projekt følger GitHub Flow. Det betyder, at alle ændringer sker via feature branches og pull requests. Følg disse trin, når du vil bidrage:

### 1. Opret et issue
Det er OS2BorgerPC koordinationsgruppen der iværksætter og godkender bidrag til OS2BorgerPC projektet. Nye bidrag skal være til gavn for flere anvendere og harmonere med OS2BorgerPC-produktets formål og scope. [Læs produktbeskrivelsen her.](https://os2borgerpc.github.io/os2borgerpc-docs/)

Opret et issue og beskriv, hvad det er, du gerne vil. Så starter en dialog, hvor koordinationsgruppen tager stilling til projektet. Gå ikke i gang med at programmere før den samtale er afsluttet. Derved undgår vi misforståelser og spildt arbejde.
- [Links til issue trackers](https://os2borgerpc.github.io/os2borgerpc-docs/docs/support-and-issue-tracker.html)

### 2. Klon fra Github
- Gå ind på OS2BorgerPC på Github og klon det repository som du vil bidrage til ned på din lokale maskine.

- Sørg for at have den nyeste version af `main` ved at køre:
  ```sh
  git checkout main
  git pull origin main
  ```

### 2. Opret en ny branch
- Opret en ny branch til dit arbejde:
  ```sh
  git checkout -b feature/mit-nye-feature
  ```

### 3. Implementér ændringer
- Lav de nødvendige ændringer og test din kode.
- Skriv beskrivende commit-beskeder:
  ```sh
  git commit -m "Tilføjer ny funktion til X"
  ```

### 4. Push til GitHub
- Skub din branch op til din fork:
  ```sh
  git push origin feature/mit-nye-feature
  ```

### 5. Afprøv lokalt
Test dine ændringer grundigt hos dig selv, inden du opretter pull request og anmoder koordinationsgruppen om code review og test.
- Udvikler du på os2borgerpc-admin kan du via byggeprocesser i Github få bygget af docker-image ud fra din feature-branch.
- Udvikler du på os2borgerpc-image eller os2borgerpc-kiosk-image kan en ISO-fil genereres via byggerprocesserne.
[Læs mere om byggeprocesserne.]()

### 5. Opret en Pull Request (PR) og afvent review
- Gå til det oprindelige repository på GitHub.
- Opret en pull request fra din branch til `main`.
- Beskriv dine ændringer kort og præcist.
- Vent på feedback og lav eventuelle nødvendige ændringer.

### 6. Merge og slet branch
- Når PR'en er godkendt og merged, kan du slette din branch:
  ```sh
  git branch -d feature/mit-nye-feature
  git push origin --delete feature/mit-nye-feature
  ```

Tak for din hjælp til at forbedre projektet!

