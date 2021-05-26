#!/usr/bin/env groovy

pipeline {

    agent any
    // parameters {}
    stages {

        stage('Setup') {
            
            steps {

                echo "Setup Started..."
                sh "chmod +x ./pipeline-scripts/*"
                ehco "Setup Finished..."

            }

        }
        stage('Client Application Test') {

            steps {

                echo "Client Application Test Started..."
                sh "./pipeline-scripts/client_test.sh"
                echo "Client Application Test Finished..."

            }

        }
        stage('Server Application Test') {
            
            steps {
                
                echo "Server Application Test Started..."
                ssh "./pipeline-scripts/server_test.sh"
                echo "Server Application Test Finished..."

            }

        }
        stage('Docker Build') {

            steps {
                sh "echo 'Docker Build Stage'"
            }

        }
        stage('Docker Push') {

            steps {
                sh "echo 'Docker Push Stage'"
            }

        }
        // stage('Deploy') {

        //     steps {
        //         sh "echo 'Deploy Stage'"
        //     }

        // }
        // stage('Verify') {

        //     steps {
        //         sh "echo 'Verify Stage'"
        //     }

        // }

    }

}
