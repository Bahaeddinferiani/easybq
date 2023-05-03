pipeline {
    agent {
        label 'Built-In Node'
    }

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/Bahaeddinferiani/easybq'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("testng", ".")
                }
            }
        }
    }
}





