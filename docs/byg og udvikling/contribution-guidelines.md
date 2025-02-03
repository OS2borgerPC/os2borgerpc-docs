---
title: "Contribution Guidelines"
nav_order: 1
layout: default
nav_exclude: false
---

# Retningslinjer for bidrag (Contribution Guidelines)

Tak fordi du ønsker at bidrage til Os2BorgerPC! For at sikre en god udviklingsproces, bedes du følge nedenstående retningslinjer.

## Generelle principper
- Vær respektfuld og konstruktiv i din kommunikation.

## GitHub Flow
Dette projekt følger GitHub Flow. Det betyder, at alle ændringer sker via feature branches og pull requests. Følg disse trin, når du vil bidrage:

### 1. Opret issue
- Det er OS2BorgerPC koordinationsgruppen der iværksætter og godkender bidrag til OS2BorgerPC projektet.
- Start med at oprette et issue. Der tager vi den forudgående dialog, hvor vi sammen får afstemt forventningerne. Derved undgår vi misforståelser og spildt arbejde.

### 2. Klon
- Klon repository til din lokale maskine.
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

### 5. Opret en Pull Request (PR)
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

## Kodekvalitet og tests
- Følg projektets kodestandarder og best practices.
- Tilføj eller opdater tests, hvis det er relevant.
- Kør tests lokalt, før du laver en PR.


Tak for din hjælp til at forbedre projektet!

