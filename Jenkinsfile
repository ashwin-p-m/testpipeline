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
        stage('Test') {

            steps {

                sh "echo 'Test Stage Started...'"
                sh "cd client/sample-app"
                sh "npm install"
                sh "ls"
                sh "cd ../.."

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
