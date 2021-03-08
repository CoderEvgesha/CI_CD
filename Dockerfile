FROM openjdk:14-jdk-alpine
WORKDIR /usr/src/app
COPY build/libs/CI_CD-1.0.jar ./