FROM jenkins/jenkins:lts
# if we want to install via apt
USER root
RUN apt-get update -y && apt-get install -y maven && apt-get install -y git
# drop back to the regular jenkins user - good practice
ENV JAVA_OPTS=-Duser.timezone=Asia/Shanghai
USER jenkins