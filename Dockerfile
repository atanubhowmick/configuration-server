# For Java 8, try this
FROM openjdk:8

# Refer to Maven build -> finalName
ARG JAR_FILE=target/ecom-config-server-1.0.0.jar

# cd /opt/app
WORKDIR /opt/app

# cp JAR_FILE /opt/app/ecom-config-server-1.0.0.jar
COPY ${JAR_FILE} ecom-config-server.jar

# java -jar /opt/app/ecom-config-server.jar
ENTRYPOINT ["java","-jar","ecom-config-server.jar"]
