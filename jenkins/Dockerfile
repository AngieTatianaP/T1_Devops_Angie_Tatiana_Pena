FROM jenkins/jenkins:lts-jdk17

# No utilizar en un ambiente de producción
ENV JENKINS_USER=tatiana
ENV JENKINS_PASS=Tatis2615*
ENV JAVA_OPTS=-Djenkins.install.runSetupWizard=false
###

ADD plugins.txt .
RUN jenkins-plugin-cli -f plugins.txt
ADD ssh-config .
USER root
ADD start.sh .
RUN mkdir /deploy
RUN chown jenkins:jenkins /deploy
USER jenkins
ENTRYPOINT [ "/start.sh" ]
