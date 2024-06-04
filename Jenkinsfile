pipeline {
    agent any
    tools {
        maven 'Default' // Ensure this matches your configured Maven in Jenkins
    }
    stages {
        stage('Build') {
            steps {
                script {
                    // Build the project and run tests
                    bat 'mvn clean install'
                }
            }
        }
    }
    post {
        always {
            // Collect JUnit test reports
            junit '**/target/surefire-reports/*.xml'
        }
    }
}
