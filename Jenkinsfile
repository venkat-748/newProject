pipeline {
	agent any

stages{
	stage("Clean"){
		steps{
			sh "./gradlew clean"
		}
	}
	stage("Build"){
		steps{
			sh "./gradlew build"
		}
	}
	stage("Test"){
		steps{
			sh "./gradlew test"
		}
	}
	stage("War"){
		steps{
			sh "./gradlew war"
		}
	}

}
}