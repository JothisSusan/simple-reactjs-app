pipeline {
    agent {
        docker {
            image 'node:alpine:14.0.6'
            args '-p 3000:3000'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
    }
}
