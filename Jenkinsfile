pipeline {
    agent any

    environment {
        TF_VERSION = "1.9.0"   // adjust to your Terraform version
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Init Terraform') {
            steps {
                sh '''
                    terraform init
                '''
            }
        }

        stage('Validate') {
            steps {
                sh '''
                    terraform validate
                '''
            }
        }

        stage('Plan') {
            steps {
                sh '''
                    terraform plan -var-file=terraform.tfvars -out=tfplan
                '''
            }
        }

        stage('Apply') {
            steps {
                input message: "Apply Terraform changes?"
                sh '''
                    terraform apply tfplan
                '''
            }
        }
    }

    post {
        always {
            archiveArtifacts artifacts: '**/*.tfstate', fingerprint: true
        }
    }
}
