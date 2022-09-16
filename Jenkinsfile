pipeline {
    agent { any }
    
   
    stages {
        stage('Cloning Git') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/monikakasture/terraform-project.git']]])     
            }
        }
        stage('terraform init') {
            steps {
                sh "terraform init"
            }   
        }
        stage('terraform plan') {
            steps {
                sh "terraform plan -var-file="vars/qa.auto.tfvars"
            }   
        }
        input 'Deploy stack?'

        stage('terraform apply') {
            steps {
                sh "terraform apply -var-file="vars/qa.auto.tfvars -auto-approve"
            }   
        }

    }