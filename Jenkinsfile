
pipeline {
  agent any
  stages {
    stage('start') {
      steps {
        echo 'Start'
      }
    }
    stage('docker-build&push') {
      steps {
        script {
          dockerImage = docker.build("ajaysheoran2323/mynewimage:latest", "-f Dockerfile .")
          docker.withRegistry('', 'dockerhub'){
            dockerImage.push()
          }
        }

      }
    }
    stage('deployToK8s') {
      steps {
        script {
          kubernetesDeploy(kubeconfigId: 'rancher',

          configs: 'k8s-deploy.yml', // REQUIRED
          enableConfigSubstitution: false,

          secretNamespace: 'devx',
          secretName: 'devx',
          dockerCredentials: [
            [credentialsId: 'dockerhub']
          ]
        )
      }

    }
  }
  stage('END') {
    steps {
      echo 'END'
    }
  }
}
}
