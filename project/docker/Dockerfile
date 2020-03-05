FROM tomcat:jre8-alpine
# For wget to work
RUN apk update \                                                                                                                                          
                                                                              
&& apk add ca-certificates wget \                                                                                                                         
                                                                 
&& update-ca-certificates
# Copy tomcat server.xml
WORKDIR /usr/local/tomcat
# Start tomcat
CMD ["catalina.sh", "run"]