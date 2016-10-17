FROM ubuntu:latest  
  
MAINTAINER zhlsky
  
RUN apt-get update  
  
RUN apt-get install default-jre -y  
  
RUN apt-get install default-jdk -y  
  
RUN apt-get install maven -y  
  
ADD pom.xml /opt/  
  
ADD src/ /opt/src/  
  
WORKDIR /opt/  

RUN mvn clean package  
  
EXPOSE  9006  

CMD ["java","-jar","target/cloud-config-server-0.0.1-SNAPSHOT.jar"]
