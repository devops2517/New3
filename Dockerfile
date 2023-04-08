FROM ubuntu:18.04
RUN apt update
RUN apt-get install apt-utils -y
RUN apt install maven -y
RUN apt install default-jdk -y
RUN apt install tomcat9 -y
RUN apt install git -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /boxfuse-sample-java-war-hello
RUN mvn package
COPY --from=builder /build/boxfuse-sample-java-war-hello/target/hello-1.0.war /usr/local/tomcat/webapps/hello.war
CMD ["catalina.sh", "run"]




