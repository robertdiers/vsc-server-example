FROM codercom/code-server:latest

USER root

#install environment requirements
RUN apt update
RUN apt install -y maven
RUN apt install -y openjdk-11-jdk

#install code extensions
RUN code-server --install-extension redhat.java
