# Jenkins Configuration as Code
./start.sh
docker run -d --name jenkins --restart=on-failure -p 8080:8080 --env JENKINS_ADMIN_ID=admin --env JENKINS_ADMIN_PASSWORD=password jenkins:jcasc
