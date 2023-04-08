FROM ubuntu:18.04
RUN apt update
RUN install apt-utils -y
RUN apt install maven -y
RUN apt install default-jdk -y
RUN apt install tomcat9 -y
RUN apt install git -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN mvn package
RUN cp hello-1.0.war /var/lib/tomcat9/webapps/

