pipeline {
    agent { docker { image 'maven:3.9.4-eclipse-temurin-17-alpine' } }
    stages {
        stage('build') {
            steps {
                sh 'mvn --version'
            }
        }
    }
    
    post {
      success {
        discordSend description: "${currentBuild.fullDisplayName}", footer: "FAILED", link: env.BUILD_URL, result: currentBuild.currentResult, title: JOB_NAME, webhookURL: "${DISCORD_WEBHOOKURL}"
      }
      failure {
        discordSend description: "${currentBuild.fullDisplayName}", footer: "SUCCEEDED", link: env.BUILD_URL, result: currentBuild.currentResult, title: JOB_NAME, webhookURL: "${DISCORD_WEBHOOKURL}"
      }
    }
}