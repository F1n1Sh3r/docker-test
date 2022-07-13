pipeline {

  environment {
    dockerimagename = "felipenascimento26/user-service:0.0.1"
    dockerImage = ""
  }

  agent any

  stages {

    stage('Build image') {
      steps{
        script {
          dockerImage = docker.build dockerimagename
        }
      }
    }

    stage('Deploying App to Kubernetes') {
      steps {
        script {
          kubernetesDeploy(configs: "user-service.yml", kubeconfigId: "kubernetes")
        }
      }
    }

    stage('Orchestrate')
    {
        steps{
            script{
        sh 'kubectl create -f */user-service.yml'
        sh 'kubectl apply -f */user-service.yml'
            }
        }
    }

  }

}
