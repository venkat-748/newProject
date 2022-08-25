pipeline {
 
 agent {
  docker{
      image "gradle:7.5.1-jdk8"
  }
  }

    stages {
            stage('Clean') {
            steps {
             sh 'env | sort'
                sh 'chmod 777 *'
           sh './gradlew clean'
            }
        }
          stage('build') {
            steps {
           sh './gradlew build'
            }
        }
          stage('test') {
            steps {
           sh './gradlew test'
            }
        }
          stage('war') {
            steps {
           sh './gradlew war'
            }
        }
          stage('finished') {
            steps {
           sh 'gradle  myTask'
            }
        }
     stage('Deploy'){
     agent any 
      steps{
        sh label: '',script: ''rm -rf dockerimg
        mkdir dockerimg
        cp dockerimg
        touch dockerfile
        cat <<EOT>>dockerfile
        FROM tomcat
        ADD lib.war /home/venkat-zstk271/Documents/apache-tomcat-9.0.64/webapps/
        CMD ["catalina.sh","run"]
        EXPOSE 8088
        EOT
        sudo docker build -t webimage:$BUILD_NUMBER .
        
      }
     }
    }
}
