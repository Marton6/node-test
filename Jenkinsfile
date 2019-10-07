pipeline {
    agent {
    	dockerfile true
    }
    environment {
        SECRETHUB_CREDENTIAL = credentials('secrethub_credential')
    }
    stages {
        stage('build') {
            steps {
                sh 'whoami'
                sh 'npm install '
            }
        }
        stage('test') {
            steps {
                sh 'whoami'
                sh 'secrethub run -- node test.js'
            }
        }
    }
} 
