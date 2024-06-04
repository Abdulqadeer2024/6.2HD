pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Simulates checking out source code
                echo 'Checking out code...'
                checkout scm
            }
        }
        
        stage('Build') {
            steps {
                // Simulates a build process
                echo 'Building the application...'
                // Example: sh 'mvn clean install' for a Maven-based project
            }
        }
        
        stage('Test') {
            steps {
                // Placeholder for test commands
                echo 'Running tests...'
                // Example: sh 'mvn test' for a Maven-based project
            }
        }
        
        stage('Deploy') {
            steps {
                // Placeholder for deployment
                echo 'Deploying application...'
                // Example: sh 'deploy.sh' for running a deploy script
            }
        }
    }
    
    post {
        always {
            // Clean up after the pipeline run
            echo 'Cleaning up post build...'
        }
        success {
            echo 'Build and deployment successful!'
            // Notifications or additional steps on success
            // Example: mail to: 'team@example.com', subject: 'Build Successful', body: 'The build and deployment were successful.'
        }
        failure {
            echo 'Build or deployment failed!'
            // Notifications or additional steps on failure
            // Example: mail to: 'team@example.com', subject: 'Build Failed', body: 'The build or deployment failed. Please check the logs.'
        }
    }
}
