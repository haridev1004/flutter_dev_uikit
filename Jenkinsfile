pipeline {
    agent any 

    environment {
        FLUTTER_HOME = '/Users/hari/Library/Flutter' // Set your Flutter SDK path
        PATH = "${env.FLUTTER_HOME}/bin:${env.PATH}" // Update PATH
        GOOGLE_PLAY_JSON = credentials('google-play-json') // Jenkins credentials for your JSON key
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/haridev1004/cicd_pipeline_testing.git' // Replace with your repository URL
            }
        }


        stage('Run Tests') {
            steps {
                sh 'flutter test'
            }
        }

        // stage('Build'){
        //     steps{
        //         sh 'flutter build appbundle'
        //     }
        // }
        
        stage("Publish"){
            steps{
                googlePlayPublisher(
                    serviceAccountCredentials: credentials('google-play-json'), // Your credential ID
                    applicationId: 'com.zig.driver', // Replace with your app's package name
                    apkFiles: '**/build/app/outputs/bundle/release/app-release.aab', // Path to your AAB file
                    track: 'production' // Specify the track (production, beta, alpha, etc.)
                )
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
