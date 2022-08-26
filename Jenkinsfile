pipeline {
    agent any 
    parameters { choice(name: 'ENV', choices: ['dev', 'prod'], description: '') }
    stages {
        stage('terraform init') {
            steps {

                sh "terrafile -f env-${ENV}/Terrafile"
                sh "terraform init -backend-config=env-${ENV}/${ENV}-backend.tfvars"
            }
        }

        stage('terraform plan') {
            steps {
                sh "terraform plan -var-file=env-${ENV}/${ENV}.tfvars
            }
        }
    }
}