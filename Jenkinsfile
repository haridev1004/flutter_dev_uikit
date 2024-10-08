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
        
        stage("Publish"){
                agent {
        docker {
            image 'openjdk:11'
            args '-v "$PWD":/app'
            reuseNode true
        }
    }

            steps{
                    sh 'echo $PATH'
                dir('android') {
                    sh "ls"
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
