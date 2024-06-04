pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Simulates checking out source code
                echo 'Checking out code...'
            }
        }
        
        stage('Build') {
            steps {
                // Simulates a build process
                echo 'Building the application...'
            }
        }
        
        stage('Test') {
            steps {
                // Placeholder for test commands
                echo 'Running tests...'
                // If you have test scripts, they would be run here, e.g., `sh 'mvn test'` for a Maven-based Java project
            }
        }
        
        stage('Deploy') {
            steps {
                // Placeholder for deployment
                echo 'Deploying application...'
            }
        }
    }
    
    post {
        always {
            // Clean up after the pipeline run
            echo 'Cleaning up post build...'
        }
    }
}
