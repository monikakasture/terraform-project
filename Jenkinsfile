pipeline {
    agent any 
    
    tools {
     terraform 'terraform'
    }
   
    stages {
        stage('Cloning Git') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/monikakasture/terraform-project.git']]])     
            }
        }
       stage('terraform workit') { 
        step{
                 sh 'export TF_WORKSPACE=qa'
                 }
       }
        stage('terraform init') {  
            steps {
               sh 'terraform init'       
            }   
        }
        stage('terraform plan') {
            steps {
                sh 'terraform plan -var-file="vars/qa.auto.tfvars"'
            }   
        }

        stage('terraform apply') {
            steps {
                sh 'terraform apply -var-file="vars/qa.auto.tfvars" -auto-approve'
            }   
        }
       }

    }