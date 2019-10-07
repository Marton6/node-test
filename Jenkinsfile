pipeline {
    agent {
    	docker { image 'node:alpine' }
    }
    environment {
        SECRETHUB_CREDENTIAL = credentials('secrethub-credential')
    }
    stages {
        stage('build') {
            steps {
                sh 'npm install '
            }
        }
        stage('test') {
            steps {
                sh 'secrethub run -- node test.js'
            }
        }
        stage('deploy') {
            /* ... */
        }
    }
} 
