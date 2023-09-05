pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'mvn clean install'
                // You may need to configure Maven settings.xml for dependencies
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    def imageTag = "${env.BUILD_NUMBER}"
                    docker.build("myapp:${imageTag}", "-f Dockerfile .")
                }
            }
        }

        }
        stage('Deploy') {
            steps {
                sh './deploy.sh'
            }
        }
    }
}
