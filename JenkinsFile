pipeline {
    agent any
    stages {
        stage('Check Branch') {
            steps {
                script {
                    if (env.BRANCH_NAME == 'master') {
                        sh 'docker build -t react-api --no-cache .'
                    } else {
                        sh 'docker build -t react-api -f Dockerfile.dev --no-cache .'
                    }
                }
            }
        }
        stage('tag') {
            steps {
                script {
                    if (env.BRANCH_NAME == 'master') {
                        sh 'docker tag react-api 172.18.0.1:5000/viact-api:prod'
                    } else {
                        sh 'docker tag react-api 172.18.0.1:5000/viact-api:dev'
                    }
                }
            }
        }
        stage('push') {
            steps {
                script {
                    if (env.BRANCH_NAME == 'master') {
                        sh 'docker push 172.18.0.1:5000/viact-api:prod'
                    } else {
                        sh 'docker push 172.18.0.1:5000/viact-api:dev'
                    }
                }
            }
        }
        stage('replace old') {
            steps {
                script {
                    if (env.BRANCH_NAME == 'master') {
                        sh 'docker rmi -f react-api 172.18.0.1:5000/viact-api:prod'
                    } else {
                        sh 'docker rmi -f react-api 172.18.0.1:5000/viact-api:dev'
                    }
                }
            }
        }
    }
}
