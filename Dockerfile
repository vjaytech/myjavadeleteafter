FROM tomcat:latest 
COPY target/maven-web-project-1.1-SNAPSHOT.war /usr/local/tomcat/webapps/ 
EXPOSE 8888
CMD ["catalina.sh", "run"]
