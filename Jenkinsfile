pipeline {
    agent any
    tools {
        maven 'Maven 3.6' // Make sure this name matches your configured Maven in Jenkins global tools
    }
    stages {
        stage('Build') {
            steps {
                script {
                    // This command handles Maven build and also runs JUnit tests automatically
                    sh 'mvn clean install'
                }
            }
        }
    }
    post {
        always {
            junit '**/target/surefire-reports/*.xml' // This step collects JUnit test reports
        }
    }
}
