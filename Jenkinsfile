pipeline {
    agent any
    tools {
        // Specify tools if needed
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
                    // Specify Unix-style path for Docker
                    def dockerPath = "/jenkins/workspace"
                    docker.image("my-app:${env.BUILD_ID}").inside("-w ${dockerPath}") {
                        sh 'echo Running tests in Docker container'
                        // Add test commands here
                    }
                }
            }
        }
    }
}
