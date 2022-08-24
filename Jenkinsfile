pipeline {
 
 agent {
  dockerfile{
   args "-v /tmp/gradle:/var/gradle/.g2 -e GRADLE_CONFIG=/var/gradle/.g2"
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
    }
}
