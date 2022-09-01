
FROM openjdk:8-jdk-alpine
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
COPY --from=build /home/app/target/war_name.war app.war
ENTRYPOINT ["java","-jar","/app.war"]

FROM node as builder
WORKDIR usr/app
COPY . .
RUN yarn install
RUN yarn run build
EXPOSE 4000
