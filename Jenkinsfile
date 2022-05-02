pipeline {
    agent any
        stages {
            stage ("build") {
                steps {
                git url: 'https://github.com/jabedhasan21/java-hello-world-with-maven.git'
                sh "mvn -X clean package"
              }
             }
            stage ("Deploy") {
                sh " docker build -t newimage:1.0 ."
                sh "docker run -itdp 8084:8084 newimage:1.0"
            }
         }
      }
