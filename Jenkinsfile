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
    }
}
