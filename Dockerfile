FROM jenkins/jenkins:lts-alpine-jdk17
LABEL Maintainer="Vimlesh Kumar"
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
ENV CASC_JENKINS_CONFIG /var/jenkins_home/jenkins-config.yaml
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt
COPY jenkins-config.yaml /var/jenkins_home/jenkins-config.yaml