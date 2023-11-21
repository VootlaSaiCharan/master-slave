pipeline {
    agent any
    stages {
        // stage('Delete Docker Containers and Images') {
        //     steps {
        //         script {
        //             // Check if Docker is installed
        //             def dockerInstalled = sh(script: 'docker --version', returnStatus: true)

        //             if (dockerInstalled == 0) {
        //                 // Docker is installed, proceed with stopping containers and deleting images
                        
        //                 // Stop all running containers
        //                 sh 'docker stop $(docker ps -aq)'

        //                 // Remove all stopped containers
        //                 sh 'docker rm $(docker ps -aq)' 

        //                 // Remove all Docker images
        //                 sh 'docker system prune -fa'                        
        //             } else {
        //                 // Displaying Message 
        //                 echo 'Docker is not installed on this agent. Skipping container and image operations.'
        //             }
        //         }
        //     }
        // }
        stage('Checkout') {
            steps {
                script {
                    // Checkout the code from your GitLab repository
                    git 'https://gitlab.com/VootlaSaiCharan/final-project.git'
                }
            }
        }
        stage('Build Docker Image') {
            steps {
                // Build Docker image with a version tag
                sh 'docker build -t final:v1 .'
            }
        }
        stage('Create Container and run') {
            steps {
                // Run Docker container
                sh 'docker run -d --name final_cont -p 80:80 final:v1'
            }
        }
    }
}