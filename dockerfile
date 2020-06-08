FROM tomcat:9.0
ARG version
EXPOSE 8080
RUN rm -r /usr/local/tomcat/webapps
RUN mv /usr/local/tomcat/webapps.dist /usr/local/tomcat/webapps
RUN wget -O /usr/local/tomcat/webapps/myapp.war 192.168.3.3:8081/nexus/content/repositories/releases/admin/gradleapp/$version/gradleapp-$version.war
CMD ["catalina.sh", "run"]
