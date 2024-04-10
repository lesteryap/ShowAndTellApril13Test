# Show And Tell, April 13th 2024

## Ideation
I want to automate the build, push, and deploy process of a website.
Whenever a push request is made in the GitHub Repository, it will automatically be deployed into a live website.

## To achieve it, I will use:
- GitHub: for code repository and version control.
- GitHub Actions: for executing trigger action to run the workflow script for build, push and deploy.
- Docker: containerize the application.
- nginx: as the webserver to run the web application.
- GCP Artifact Registry: instead of using the docker hub which have been taught and tried during class, I will be trying 'Artifact Registry' to store my docker images.
- GCP Cloud Run: to host the docker container that I have placed in the 'Artifact Registry' so I can view my website.

## Steps:
1. Create Github Repository (https://github.com/lesteryap/ShowAndTellApril13Test)
2. Create an Artifact Registry in GCP:
    - Format: docker
    - Region: asia-souteastasia1(Singapore)
3. Go to IAM and create service account in GCP:
    - Provide and add necessary permission to this service account (Artifact Registry Repository Administrator, Cloud run admin, etc.)
4. Push website code to Github Repository (Html/css/js)
5. In the folder, create Docker file to containerize the web application
     - `FROM nginx:latest`
     - add/copy all necessary files to the container
7. In the folder, create a GitHub action workflow file (.github/workflows/)
     - script to build the docker file and push it into the GCP Artifact Registry
     - script to deploy the build docker image to the Cloud Run environment
       
## Results:
Every push request into the main branch of the Github Repository (https://github.com/lesteryap/ShowAndTellApril13Test) will now automatically be deployed and be accessible live.

**cloud run:**
https://nginx-gsnydjpflq-as.a.run.app/

**github pages:**
https://lesteryap.github.io/ShowAndTellApril13Test/
