pipeline {
    agent any 

    environment {
        FLUTTER_HOME = '/Users/hari/Library/Flutter' // Set your Flutter SDK path
        PATH = "${env.FLUTTER_HOME}/bin:${env.PATH}" // Update PATH
        FASTLANE_ENV = 'production'   
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/haridev1004/cicd_pipeline_testing.git' // Replace with your repository URL
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
            steps{
                    sh 'echo $PATH'
                dir('android') {
                    sh "ls"
                    // sh "fastlane deploy"
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
