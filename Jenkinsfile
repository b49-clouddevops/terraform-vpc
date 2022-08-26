pipeline {
    agent any 
    stages {
        stage('terraform init') {
            steps {

                sh "terrafile -f env-${ENV}/Terrafile"
                sh "terraform init -backend-config=env-${ENV}/${ENV}-backend.tfvars"
            }
        }
    }
}