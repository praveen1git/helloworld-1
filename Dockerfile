FROM tomcat:8-jre8
RUN rm -rf /usr/local/tomcat/webapps/*
COPY ./jb-hello-world-maven-0.2.0.jar  /usr/local/tomcat/webapps/ROOT.jar
EXPOSE 8084
CMD ["catalina.sh", "run"]
