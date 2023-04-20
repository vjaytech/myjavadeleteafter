From tomcat:8.0.51-jre8-alpine
RUN rm -rf /usr/local/tomcat/webapps/*
COPY .target/maven-web-project-1.1-SNAPSHOT.war /usr/local/tomcat/webapps/maven-web-project-1.1-SNAPSHOT.war
CMD ["catalina.sh","run"]
