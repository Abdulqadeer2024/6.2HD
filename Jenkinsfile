pipeline {
    agent any
    tools {
        nodejs "NodeJS-12.x"
        dockerTool "docker"
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
