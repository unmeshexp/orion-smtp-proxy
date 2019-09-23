node{
            stage('Checkout') {
                checkout scm
            }

            stage('Setup Env') {
                // No special setup needed
            }

            stage('Docker build & Publish') {
                if (env.BRANCH_NAME == 'master') {
                    sh "chmod +x ./docker-build-and-publish.sh"
                    sh "sudo ./docker-build-and-publish.sh ${env.BUILD_NUMBER}"
                }
            }   

            stage('clean') {
                // Nothing to clean
            }
 }



def notifyFailed() {
    emailext (
      subject: "FAILED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]'",
      body: """<p>FAILED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]':</p>
        <p>Check console output at <a href='${env.BUILD_URL}'>${env.JOB_NAME} [${env.BUILD_NUMBER}]</a></p>""",
      to: "unmeshkulkarni@yahoo.com"
    )
}