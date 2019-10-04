pipeline {
    agent { docker { image 'node:6.3' } }
    stages {
        stage('test') {
            steps {
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
