#!/usr/bin/env groovy

pipeline {

    agent any
    // parameters {}
    stages {

        stage('Setup') {
            
            steps {

                script {

                    echo "Setup Started..."
                    sh "chmod +x ./pipeline-scripts/*"
                    env.DOCKER_BASE = "docker.io"
                    env.ARTIFACTORY_CRED_ID = "docker-registry-credentials"
                    env.BRANCH_PATTERN = "main|develop|test-dev|^TS-.*|PR-\\d+"
                    env.REGEXP = "REGEXP"
                    echo "Setup Finished..."

                }

            }

        }
        stage('Client Application Test') {

            when {

                anyOf {
                    branch pattern: BRANCH_PATTERN, comparator: REGEXP
                }

            }
            steps {

                script {

                    echo "Client Application Test Started..."
                    sh "./pipeline-scripts/client_test.sh"
                    echo "Client Application Test Finished..."
                
                }

            }

        }
        stage('Server Application Test') {
            
            when {

                anyOf {
                    branch pattern: BRANCH_PATTERN, comparator: REGEXP
                }

            }
            steps {
                
                script {

                    echo "Server Application Test Started..."
                    sh "./pipeline-scripts/server_test.sh"
                    echo "Server Application Test Finished..."

                }

            }

        }
        stage('Docker Client Application Build And Push') {

            when {

                anyOf {
                    branch pattern: BRANCH_PATTERN, comparator: REGEXP
                }

            }
            steps {

                script {

                    echo "Docker Client Application Build And Push Started..."
                    echo "Docker Client Application Build Finished..."

                }
            }

        }
        stage('Docker Build') {

            when {

                anyOf {
                    branch pattern: BRANCH_PATTERN, comparator: REGEXP
                }

            }
            steps {
                sh "echo 'Docker Build Stage'"
            }

        }
        stage('Docker Push') {

            when {

                anyOf {
                    branch pattern: BRANCH_PATTERN, comparator: REGEXP
                }

            }
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
