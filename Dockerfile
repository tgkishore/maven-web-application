FROM tomcat:7-jdk8-corretto
COPY target/maven-web-application*.war /usr/local/tomcat/webapps/maven-web-application.war

# syntax=docker/dockerfile:experimental
FROM continuumio/miniconda3

RUN --mount=type=ssh pip install git+ssh://git@github.com/myrepo/myproject.git@develop
RUN conda install numpy
...
