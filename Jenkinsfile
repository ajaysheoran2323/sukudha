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
    stage('Deploy') {
      steps {
        sh '''ssh ubuntu@35.154.153.24
docker container rm -f vigilant_kilby 
docker run -itd --name vigilant_kilby ajaysheoran2323:$BUILD_NUMBER'''
      }
    }
  }
}