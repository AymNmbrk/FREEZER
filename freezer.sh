#!/bin/bash

#demande des identifiants pour se connecter
user=$1
ip=$2
mdp=$3





var=$(ftp -inv $ip << END.script
user $user $mdp
cd Music
ls -c
lcd /home/aymn/Music
mget * 
quit
grep 
END.script
)


#echo "$var"
var2=$(echo "$var" | grep "150" | sed 's/150 Opening BINARY mode data connection for//g' | cut -d"(" -f1) 
echo "$var2" > file
#cat file


read -p "Merci de choisir un morceau  " choice

isInFile=$(cat file | grep -c "$choice")
#echo "$isInFile"


if [[ $isInFile -eq 0 ]] 
then
   cd /home/aymn/Music
   down=$(spotdl "$choice")
   echo "$down" > file2
   #cat file2
   track=$(cat file2 | head -n2 | tail -n1 | cut -d'"' -f2)
   track="$track".mp3
   #echo "$track"
   vlc "$track"
else
   echo "already existe"
fi


#then 
#    echo " $choice already exist"
#else
#    spotdl $choice
#
#ftp -inv $ip << END.script
#user $user $mdp
#cd Music
#ls -c
#quit
#END.script
#
#
#
#
#
#ls | cut -d"-" -f2 | cut -d"." -f1
