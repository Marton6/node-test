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
                sh 'npm install '
            }
        }
        stage('test') {
            steps {
                sh 'apk add --repository https://alpine.secrethub.io/alpine/edge/main --allow-untrusted secrethub-cli'
                sh 'secrethub run -- node test.js'
            }
        }
    }
} 
