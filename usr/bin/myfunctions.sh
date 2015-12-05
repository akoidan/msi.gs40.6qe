#!/bin/bash


# echos id of the current tab
#use $(getId)
function getId() {
 # qdbus org.kde.yakuake - prints all methods 
 qdbus org.kde.yakuake /yakuake/sessions activeSessionId
}

#sets current tab tittle name
#use tabTittle name
function tabTittle() {
 id=$(getId)
 qdbus org.kde.yakuake /yakuake/tabs setTabTitle $id $1 
}

#changes directory and sets tabtittle
#use changeDirectory path tittle
function changeDirectory() {
 cd $1
 tabTittle $2
}

#kills all processes that contains 
#use mykill stringInProcess
mykill () {
 kill -9 $(ps ax|grep -i $1 | awk '{print $1}')
}

#prints colored help
#use chp command description
chp(){
 size=${#1}
 indent=$((20 - $size))
 printf "\e[1;37;40m$1"
 for (( c=1; c<= $indent; c++))  ; do
 printf "\e[0;36;40m."
 done
 printf "\e[0;33;40m$2\n\e[0;37;40m"
}

