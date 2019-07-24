FROM ubuntu

#ADD JAVA repo
RUN apt-get update && apt-get install -y curl \
 software-properties-common \
 python-software-properties \
 && add-apt-repository ppa:webupd8team/java

#Installa java
RUN echo debconf shared/accepted-oracle-license-v1-1select true | debconf-set-selections \
 && echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections \
 && apt-get update && apt-get -y install oracle-java7-installer

# Install Tomcat
RUN mkdir -p /opt/tomcat \
 && curl -SL http://apache.fastbull.org/tomcat/tomcat-7/v7.0.72/bin/apache-tomcat-7.0.72.tar.gz \
 | tar -xzC /opt/tomcat --strip-components=1 \
 && rm -Rf /opt/tomcat/webapps/docs /opt/tomcat/webapps/examples

COPY tomcat-users.xml /opt/tomcat/conf/

EXPOSE 8080

ENV JAVA_OPTS -server -XX:+DisableExplicitGC -XX:+UserConcMarKSweepGC \

WORKDIR /opt/tomcat
CMD ["bin/catalina.sh","run"]
 
