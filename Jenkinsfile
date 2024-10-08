pipeline {
    agent any 

    environment {
        FLUTTER_HOME = '/Users/hari/Library/Flutter' // Set your Flutter SDK path
        FASTLANE_PATH = "/usr/local/bin/fastlane"
        PATH = "${FLUTTER_HOME}/bin:${FASTLANE_PATH}:${env.PATH}"
    }

    stages {

     

        stage('Checkout') {
            steps {
                git 'https://github.com/haridev1004/flutter_dev_uikit.git' // Replace with your repository URL
            }
        }


        // stage('Run Tests') {
        //     steps {
        //         sh 'flutter test'
        //     }
        // }

        // stage('Build'){
        //     steps{
        //         sh 'flutter build appbundle --release'
        //     }
        // }
        
        stage('Setup') {
          steps {
            dir(DIR) {
              sh 'chmod +x ./gradlew'
            }
          }
        }
        stage('Build') {
          steps {
            dir(DIR) {
                sh './gradlew build'
            }
          }
        }
        stage('Run tests') {
            steps {
                dir(DIR) {
                    sh './gradlew test'
                }
            }
        }

        
    }

    post {
        success {
            echo 'Build completed successfully!'
        }
        failure {
            echo 'Build failed!'
        }
    }
}
