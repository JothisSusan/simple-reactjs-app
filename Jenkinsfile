pipeline {
   agent {
        docker { image 'node:alpine' }
    }
    stages {
       stage('Initialize'){
        def dockerHome = tool 'Docker'
        env.PATH = "${dockerHome}/bin:${env.PATH}"
    }
        stage('Test') {
            steps {
                sh 'node --version'
            }
        }
    }
}
