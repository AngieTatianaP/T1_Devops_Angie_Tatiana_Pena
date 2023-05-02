pipeline {
    agent any
    stages {
      stage('Set up Docker') {
        steps {
            script {
                def dockerHome = tool 'Docker'
                env.PATH = "${dockerHome}/bin:${env.PATH}"
            }
          }
        }
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
                sh 'docker rm -f django'
                sh 'docker run --rm -d --name django -p 8000:8000 django'
            }
          }
   }
}

