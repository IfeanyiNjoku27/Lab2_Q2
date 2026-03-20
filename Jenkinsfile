pipeline {
    agent any

    tools {
        maven "MAVEN3"
        jdk "JDK21"
    }

    environment {
        DOCKERHUB_PWD = credentials('CredentialID_DockerHubPWD')
        DOCKERHUB_USR = 'ifeanyinjokudocker'
        IMAGE_NAME = "${DOCKERHUB_USR}/repo_4_integration:2.0"
    }

    stages {
        stage("Checkout") {
            steps {
                // IMPORTANT: Replace the URL below with the actual link to your GitHub repository!
                git branch: 'main', url: 'https://github.com/IfeanyiNjoku27/Lab2_Q2.git'
            }
        }

        stage("Build maven project") {
            steps {
                sh 'mvn clean install'
            }
        }

        stage("Docker build") {
            steps {
                sh "docker build -t ${IMAGE_NAME} ."
            }
        }

        stage("Docker login") {
            steps {
                sh "docker login -u ${DOCKERHUB_USR} -p ${DOCKERHUB_PWD}"
            }
        }

        stage("Docker push") {
            steps {
                sh "docker push ${IMAGE_NAME}"
            }
        }
    }
}