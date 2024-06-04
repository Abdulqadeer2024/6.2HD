pipeline {
    agent any
    tools {
        nodejs "NodeJS-16.20.1"
        dockerTool "Default"
    }
    stages {
        stage('Build') {
            steps {
                script {
                    docker.build("my-app:${env.BUILD_ID}")
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    // Ensure the working directory inside Docker is set to a valid Unix path
                    docker.image("my-app:${env.BUILD_ID}").inside('-w /workspace') {
                        sh 'npm install'
                        sh 'npm test'
                    }
                }
            }
        }
    }
}
