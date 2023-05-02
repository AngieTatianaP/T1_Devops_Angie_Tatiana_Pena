pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/AngieTatianaP/T1_Devops_Angie_Tatiana_Pena.git'
            }
        }

        stage('Install dependencies') {
            steps {
                sh 'pip install -r requirements.txt'
            }
        }

        stage('Lint') {
            steps {
                sh 'pip install pylint'
                sh 'pylint T1_Devops_Angie_Tatiana_Pena'
            }
        }

        stage('Build and deploy container') {
            steps {
                sh 'docker build -t T1_Devops_Angie_Tatiana_Pena .'
                sh 'docker run -d -p 8000:8000 T1_Devops_Angie_Tatiana_Pena'
            }
        }
    }
}