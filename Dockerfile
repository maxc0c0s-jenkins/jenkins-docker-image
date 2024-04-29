FROM jenkins/jenkins:2.440.3-lts-jdk17

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/ref/plugins.txt

RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt
