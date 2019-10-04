pipeline {
    agent { docker { image 'node:alpine' } }
    stages {
        stage('test') {
            steps {
                sh 'apk add --repository https://alpine.secrethub.io/alpine/edge/main --allow-untrusted secrethub-cli'
                sh 'secrethub run -- npm test'
            }
        }
        stage('build') {
            steps {
                sh 'npm --version'
                sh 'secrethub run -- npm start'
            }
        }
    }
} 
