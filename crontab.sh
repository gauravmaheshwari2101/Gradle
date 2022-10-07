#!/bin/bash
#Variable Section
GIT_URL=https://github.com/gauravmaheshwari2101/Gradle.git
GIT_LOGFILE=gitlog_$(date +'%d%m%Y')

# Define Functions
checkdir(){
if [ -d "Gradle" ] 
then
    echo "Directory Gradle exists so deleting existing directory and cloning new directory"
    cleanup 
else
    echo "Does not exist so cloning new directory"	
    gitclone
fi	
}
gitclone(){
	git clone ${GIT_URL}
}

gitlogfile(){
	git log --name-status -n 5 >> ${GIT_LOGFILE}
}

cleanup(){
	rm -rf Gradle
}

#Calling Defined Functions
checkdir
gitlogfile
cleanup


