# Project Zomboid Backup
Back up your own Project Zomboid saves (server- and player-files). The script creates a folder with the current date as a name and generates two files:
- Zomboid.tar
- Zomboid.tar.xz (compressed)


First time setup:

```
# Backup location (~) and folderName (ZomboidBackup) is just an example

cd ~
mkdir ZomboidBackup
cd ZomboidBackup
curl https://raw.githubusercontent.com/soberga/projectZomboidBackup/main/backupProjectZomboid.sh -o backupProjectZomboid.sh
chmod +x backupProjectZomboid.sh
```

Create backup:
```
cd ~/ZomboidBackup
./backupProjectZomboid.sh
```

You should have a folder with the backup-date/time as name and the .tar and .tar.xz inside:
![borked image link!](https://github.com/soberga/projectZomboidBackup/blob/main/images/backupFiles.png "Backup Files") 