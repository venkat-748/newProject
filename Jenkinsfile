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
      steps{
        sh label: '',script: ''rm -rf dockerimg
        mkdir dockerimg
        cd dockerimg
        cp /home/venkat-zstk271/Downloads/AgentOne/workspace/GradleDocker/lib/build/libs/lib.war /home/venkat-zstk271/Documents/apache-tomcat/webapps/
         touch {Dockerfile}
        cat <<EOT>>Dockerfile
        FROM tomcat
        CMD ["catalina.sh","run"]
        EXPOSE 8088
        EOT
        sudo docker build -t webimage:2
        
      }
     }
    }
}
