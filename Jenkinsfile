pipeline {
    agent any
    stages {
        stage('Check Branch') {
            steps {
                script {
                        sh 'docker build -t react-api --no-cache .'
                }
            }
        }
        stage('tag') {
            steps {
                script {
                        sh 'docker tag react-api 172.18.0.1:5000/viact-api:prod'
                }
            }
        }
        stage('push') {
            steps {
                script {
                        sh 'docker push 172.18.0.1:5000/viact-api:prod'
                }
            }
        }
        stage('replace old') {
            steps {
                script {
                        sh 'docker rmi -f react-api 172.18.0.1:5000/viact-api:prod'
                }
            }
        }
    }
}
