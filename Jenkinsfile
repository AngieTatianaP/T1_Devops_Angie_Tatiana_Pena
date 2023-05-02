pipeline {
    agent any
    tools {
    // a bit ugly because there is no `@Symbol` annotation for the DockerTool
    // see the discussion about this in PR 77 and PR 52:
    // https://github.com/jenkinsci/docker-commons-plugin/pull/77#discussion_r280910822
    // https://github.com/jenkinsci/docker-commons-plugin/pull/52
    'org.jenkinsci.plugins.docker.commons.tools.DockerTool' '18.09'
  }
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

