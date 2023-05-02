pipeline {
    agent any
    stages {
      stage('Cloning repo') {
        steps {
            git branch: 'main', url: 'https://github.com/AngieTatianaP/T1_Devops_Angie_Tatiana_Pena.git'
            sh """
                docker build -t django .
            """
            }
          }
    stage('pylint') {
        steps {
            sh """
               pwd
               pylint --disable=C0111 --exit-zero rp-portfolio
            """
          }
      }
     stage('run') {
        steps {
            sh """
                docker rm -f T1_Devops_Angie_Tatiana_Pena
                docker run --rm -d --name django -p 8000:8000 T1_Devops_Angie_Tatiana_Pena
            """
            }
          }
   }
}

