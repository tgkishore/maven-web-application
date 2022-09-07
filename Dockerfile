
#FROM tomcat:7-jdk8-corretto
#COPY target/maven-web-application*.war /usr/local/tomcat/webapps/maven-web-application.war
#export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/
 #ARG war_FILE=/home/app/target/*.war
#COPY ${war_FILE} app.war
FROM openjdk:8-jdk-alpine
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
COPY --from=build /home/app/target/war_name.war app.war
ENTRYPOINT ["java","-jar","/app.war"]
ARG war_FILE=/home/app/target/*.war
COPY ${war_FILE} app.war
