pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                // Use the Docker plugin to build the image
                sh 'docker build -t test-image .'
            }
        }
    }
}
