pipeline {
    agent any 
    stages {
        stage('terraform init') {
            steps {

                sh "terrafile -f env-${ENV}/Terrafile"
                sh ""
            }
        }
    }
}