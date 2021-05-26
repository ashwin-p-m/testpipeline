#!/usr/bin/env groovy

pipeline {

    agent any
    // parameters {}
    stages {

        stage('Setup') {
            
            steps {
                sh "echo 'Setup Stage'"
            }

        }
        stage('Client Application Test') {

            steps {

                sh """
                echo 'Test Stage Started...'
                cd client/sample-app
                npm install
                ls
                cd ../..
                """

            }

        }
        stage('Server Application Test') {
            
            steps {
                sh "echo 'Server Application Test Stage"
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
