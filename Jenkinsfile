pipeline {
    agent any
    environment {
        AWS_ACCOUNT_ID='xxxxxxxxxx'
        AWS_DEFAULT_REGION='ap-south-1'
        IMAGE_REPO_NAME='mavenwebapp'
        REPOSITORY_URI = 'xxxxxxxxx.dkr.ecr.ap-south-1.amazonaws.com/mavenwebapp'
        AWS_ACCESS_KEY_ID = "xxxxxxxxxxxx"
       AWS_SECRET_ACCESS_KEY = "xxxxxxxxxxxxxxxxxx"
  }

    stages {
        stage('code fetch') {
            steps {
                git branch: 'main', url: 'https://github.com/vjtechie/newtestrepo.git'
            }
        }
        stage('Build') {
            steps {
                sh "mvn clean package"
            }
        }
         
         stage('push iamge ') {
            steps {
                sh "aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 361703069140.dkr.ecr.ap-south-1.amazonaws.com"
                sh "docker build -t mavenwebapp ."
                sh "docker tag mavenwebapp:latest 361703069140.dkr.ecr.ap-south-1.amazonaws.com/mavenwebapp:latest"
                sh "docker push 361703069140.dkr.ecr.ap-south-1.amazonaws.com/mavenwebapp:latest"
            }
        }
        
    }
}
   
