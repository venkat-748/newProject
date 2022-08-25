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
            sh 'pwd'
            }
        }
     stage('Deploy'){
     agent any 
      steps{
        sh label: '',script: ''rm -rf dockerimg
        mkdir 'dockerimg'
        cp 'dockerimg'
        cp '/home/venkat-zstk271/Downloads/AgentOne/workspace/GradleDocker/lib/build/libs/lib.war .' 
        touch 'dockerfile'
        cat '<<EOT>>dockerfile'
        FROM tomcat
       ADD  lib.war 
        CMD ["catalina.sh","run"]
        EXPOSE 8088
        EOT
        sudo docker build -t webimage : $BUILD_NUMBER .
        
      }
     }
    }
}
