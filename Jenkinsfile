pipeline {
    agent any
    stages {
      stage('Checkout') {
        steps {
            git branch: 'main', url: 'https://github.com/AngieTatianaP/T1_Devops_Angie_Tatiana_Pena.git'
            }
          }
     stage('pylint'){
            steps {
                sh 'pylint ./django-project > /logs/pylint-logs.txt || true'
            }
        }
     stage('run') {
        steps {
                sh 'cp -r ./django-project/* /deploy'
            }
          }
   }
}

