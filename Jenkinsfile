pipeline {
    agent any
        stages {
            stage ("build") {
                steps {
                sh "git clone https://github.com/praveen1git/helloworld-1.git"
                sh "mvn -X clean package"
              }
             }
            stage ("Deploy") {
                steps {
                sh "docker build -t newimage:1.0 ."
                sh "docker run -itdp 8084:8084 newimage:1.0"
              }
            }
         }
      }
