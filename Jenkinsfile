pipeline {
    agent any
    tools {
        nodejs 'NodeJS-16.20.1'  // Use the exact name configured in Jenkins
    }
    stages {
        stage('Checkout SCM') {
            steps {
                checkout scm
            }
        }
        stage('Install Dependencies') {
            steps {
                bat 'npm install'
            }
        }
        stage('Test') {
            steps {
                bat 'npm test'
            }
        }
        stage('Build') {
            steps {
                bat 'npm run build'
            }
        }
        stage('Deploy') {
            steps {
                bat 'npm run deploy'
            }
        }
    }
}
