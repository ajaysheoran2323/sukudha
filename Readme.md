## Simple hello world Deployment using Jenkins CICD pipeline.

### Pre-requisite:
  You need to have following installed or available as infrasture on your side:
  1. Jenkins Server
  2. Kubernetes Server for container deployment.
  3. Github account
  4. Dockerhub account.

### How to run the project:
  Clone the project and start Jenkins pipeline. There is a pre-defined `Jenkinsfile` available in the repo, You just need to change the credentials. 


### Steps:
  1. `git clone https://github.com/ajaysheoran2323/sukudha.git`
  2. Go to Jenkins and create a pipeline named `demo`
  3. Use Jenkinsfile as the pipeline script.
  4. Build a webhook in GitHub and then add this webhook in Jenkins.
      Login to github
      Go to your project repository.
      Go to "settings" in the right corner.
      Click on "webhooks."
      Click "Add webhooks."
      Write the Payload URL as
      https://jenkinsURL/github-webhook/
      
      Here, Payload URL is the URL where our Jenkins is running add github-webhook to tell GitHub that it is a webhook.
      
  5. Run the pipeline.
  
  




