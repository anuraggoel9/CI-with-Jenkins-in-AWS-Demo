RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz
  
FROM tomcat:jre8-alpine
# For wget to work
RUN apk update \                                                                                                                                          
                                                                              
&& apk add ca-certificates wget \                                                                                                                         
                                                                 
&& update-ca-certificates
# Copy tomcat server.xml
WORKDIR /usr/local/tomcat
# Start tomcat
CMD ["catalina.sh", "run"]