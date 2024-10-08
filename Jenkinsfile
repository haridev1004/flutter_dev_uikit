pipeline {
    agent any 

    environment {
        FLUTTER_HOME = '/Users/hari/Library/Flutter' // Set your Flutter SDK path
        FASTLANE_PATH = "/usr/local/bin/fastlane"
        JAVA_HOME="/usr/local/opt/openjdk@17/bin/java";
        PATH = "${FLUTTER_HOME}/bin:${FASTLANE_PATH}:${JAVA_HOME}:${env.PATH}"
        LANG = "en_US.UTF-8" // Set locale to UTF-8
       FASTLANE_DONT_STORE_PASSWORD = '1'  // Prevents Fastlane from storing passwords
    FASTLANE_APPLE_APPLICATION_SPECIFIC_PASSWORD = 'your_app_specific_password'
    FASTLANE_APPLE_ID = 'your_apple_id'
    APP_STORE_CONNECT_API_KEY_PATH = 'path/to/your/api_key.p8'
    APP_STORE_CONNECT_API_KEY_ID = 'your_key_id'
    APP_STORE_CONNECT_ISSUER_ID = 'your_issuer_id'
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
            steps{
                sh 'echo $PATH'
                sh "fastlane test"

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
