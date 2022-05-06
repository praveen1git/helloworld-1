FROM tomcat:8-jre8
RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/*.jar /usr/local/tomcat/webapps/ROOT.jar
EXPOSE 8084
CMD ["catalina.sh", "run"]
