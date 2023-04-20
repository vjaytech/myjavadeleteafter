FROM tomcat:latest 
COPY maven-web-project-1.1-SNAPSHOT.war /usr/local/tomcat/webapps/ 
EXPOSE 8080 
CMD ["catalina.sh", "run"]
