
FROM tomcat:7-jdk8-corretto
COPY target/maven-web-application*.war /usr/local/tomcat/webapps/maven-web-application.war
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/
