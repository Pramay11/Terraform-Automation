pipeline {
    agent any

    parameters {
        choice(
            name: 'ACTION',
            choices: ['plan', 'apply'],
            description: 'Select the action to perform'
        )
        string(
            name: 'BRANCH',
            defaultValue: 'main',
            description: 'Branch to checkout (enter branch name when running the pipeline)'
        )
    }
    stages {
        stage('Checkout') {
            steps {
                checkout scmGit(branches: [[name: "*/${params.BRANCH}"]], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Pramay11/Terraform-Automation.git']])
            }
        }
    
        stage ("terraform init") {
            steps {
                sh ("terraform init -reconfigure") 
            }
        }

        stage ("Action") {
            steps {
                script {
                    switch (params.ACTION) {
                        case 'plan':
                            echo 'Executing Plan...'
                            sh "terraform plan"
                            break
                        case 'apply':
                            echo 'Executing Apply...'
                            sh "terraform apply --auto-approve"
                            break
                        default:
                            error 'Unknown action'
                    }
                }
            }
        }
    }
}
