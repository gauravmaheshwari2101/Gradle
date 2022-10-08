pipeline {
    agent any

    triggers {
        cron('0 10 * * *') //regular builds at 10 AM Everyday
    }

    stages {
        stage('Checkout') {
            steps { //Checking out the repository
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'a5ffd0e6-dfdd-4204-9513-3c4493055ffd', url: 'https://github.com/gauravmaheshwari2101/Gradle.git']]])
            }
        }
        stage('Build') {
            steps { //Building the  jars
                sh './gradlew clean build'
            }
        }
        stage('Publish Artifact') {
            steps { // uploading the artifacts
                sh './gradlew clean build publish'
            }    
         }        

        stage('Cleanup') {
            steps { // Cleaning up the checkout 
                cleanWs()               
            }    
         } 
     }
}
