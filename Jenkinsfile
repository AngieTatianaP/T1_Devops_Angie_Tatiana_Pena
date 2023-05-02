pipeline {
    agent any
    tools {
    // a bit ugly because there is no `@Symbol` annotation for the DockerTool
    // see the discussion about this in PR 77 and PR 52:
    // https://github.com/jenkinsci/docker-commons-plugin/pull/77#discussion_r280910822
    // https://github.com/jenkinsci/docker-commons-plugin/pull/52
    'org.jenkinsci.plugins.docker.commons.tools.DockerTool' 'Docker'
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
                sh 'pylint ./django-project'
            }
        }
     stage('run') {
        steps {
                sh 'cp -r ./django-project/* /deploy'
            }
          }
   }
}

