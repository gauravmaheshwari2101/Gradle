#!/bin/bash

#define Variables
GIT_URL=https://github.com/gauravmaheshwari2101/Gradle.git
GIT_LOGFILE=gitlog_$(date +'%d%m%Y')

# Define Functions

#To check whether Directory already exists or not .
checkdir(){
if [ -d "Gradle" ] 
then
    echo "Deleting existing directory and cloning new directory"
    cleanup 
else
    echo "Directory does not exist so cloning new directory"
    gitclone
fi
}

#for cloning the repository
gitclone(){
        git clone ${GIT_URL}
}

#for git log of last 5 commits in a file named gitlog_ddmmyyyy which contains only author and modifies files
gitlogfile(){
        git log --name-status -n 5 >> ${GIT_LOGFILE}
}

#For removing Directory from local
cleanup(){
        rm -rf Gradle
}

#Calling Defined Functions
checkdir
gitlogfile
cleanup
