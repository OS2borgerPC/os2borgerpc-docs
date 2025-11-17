---
title: "Backup"
parent: "Installation og drift"
nav_exclude: false
nav_order: 30
---


## Backup af filer

For at sikre, at scripts og andre uploads bevares mellem genstarter og ved opgradering gemmes de på et persistent volume, der hedder `admin-media`.

Volume data ligger på denne sti. Stien kan variere lidt alt efter hvordan docker blev installeret.
```bash
/var/lib/docker/volumes/os2borgerpc-admin-site-deployment_admin-media
```

Det er vigtigt at du sikrer dig at der tages backup af filerne.

## Database backup

Tilsvarende ligger databasen på et persistent volume, der hedder `postgres-data`.
```bash
/var/lib/docker/volumes/os2borgerpc-admin-site-deployment_postgres-data
```
Vil du gerne hav et sql-dump af databasen, kan det laves via task-værktøjet:
```bash
task backup_db
```

Ønsker man daglige db-dumps til backup formål, kan et cron-job opsættes.

HUSK! Tilret stien hen til installationsmappen. Udskift `mitbrugernavn` med dit eget.

```bash
# Make a database backup at 2AM and save it to os2borgerpc-admin/db_backups
0 2 * * * cd /home/mitbrugernavn/os2borgerpc-admin && task backup_db
# Cleanup database backups older than 10 days
0 2 * * * find /home/mitbrugernavn/os2borgerpc-admin/db_backups -mtime +10 -type f -delete
```

Eksemplet her laver en database backup hver nat kl. 02:00. Samtidig slettes database backups der er ældre end 10 dage.
