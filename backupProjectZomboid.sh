#!/bin/bash
printf "\n${CYAN}Zombro\'s Project Zomboid backup service v0.0.1${NC}\n"
RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color
backupDirectory=`date +"%Y.%m.%d-%T"`
zombroSavedirName=Zomboid
zombroSaveDirectory=~/$zombroSavedirName/
tarball=./$backupDirectory/Zomboid.tar
compressedFile=./$backupDirectory/Zomboid.tar.xz

if [ -d "$backupDirectory" ]; then
  printf "${RED}Directory $backupDirectory already exists - terminating...\n${NC}"
  exit
fi

if [ ! -d "$backupDirectory" ]; then
  printf "Create directory ${GREEN}$backupDirectory${NC}\n"
  mkdir $backupDirectory
fi

printf "Tarballing ${GREEN}$zombroSaveDirectory${NC} into ${GREEN}$tarball${NC}\n"
tar -C $zombroSaveDirectory -cvf $tarball --exclude="backups" ../$zombroSavedirName

printf "Compress ${GREEN}$tarball${NC} into ${GREEN}$compressedFile${NC} \n"
xz -k -c -v $tarball > $compressedFile

printf "${CYAN}Zombro\'s Project Zomboid backup service finished successfully! Happy hunting!${NC}\n"