pipeline {
  agent any
  stages {
    stage('start') {
      steps {
        echo 'Start'
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