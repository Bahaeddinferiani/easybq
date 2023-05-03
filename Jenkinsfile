pipeline {
    agent {
        label 'master'
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





