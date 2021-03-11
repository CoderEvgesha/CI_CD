FROM openjdk:15-jdk-alpine
WORKDIR /usr/src/app
COPY build/libs/CI_CD-1.0.jar ./
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "CI_CD-1.0.jar"]