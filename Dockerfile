# Start from a base image
FROM tomcat

# Set the working directory (optional)
WORKDIR /usr/local/tomcat

RUN cp -R webapps.dist/* webapps/
RUN cd webapps/
RUN wget -O ROOT.war --user=admin --password=nexus http://43.204.103.129:8081/repository/sample-release/com/boxfuse/samples/hello/1.0/hello-1.0.war

# If there are other setup commands, include them here
