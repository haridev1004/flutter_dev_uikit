pipeline {
    agent any 

    environment {
        FLUTTER_HOME = '/Users/hari/Library/Flutter' // Set your Flutter SDK path
        FASTLANE_PATH = "/usr/local/bin/fastlane"
        JAVA_HOME="/usr/local/opt/openjdk@17";
        GRADLE_HOME="/usr/local/bin/gradle";
        PATH = "${FLUTTER_HOME}/bin:${FASTLANE_PATH}:${JAVA_HOME}/bin:${GRADLE_HOME}/bin:${env.PATH}"
        LANG = "en_US.UTF-8" // Set locale to UTF-8
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
        
        // stage("Publish"){
        //     steps{
        //         sh 'echo $PATH'
        //         sh "flutter test

        //     }
        // }
        stage("Fastlane Integration") {    
            steps{
                sh "which fastlane"
                dir("android/fastlane"){
                sh "java --version"
                sh "fastlane test"
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
