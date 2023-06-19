# For Java 8, try this
FROM openjdk:8

# Refer to Maven build -> finalName
ARG JAR_FILE=target/ecom-config-server-1.0.0.RELEASE.jar

# cd /opt/app
WORKDIR /opt/app

# cp target/ecom-config-server-1.0.0.RELEASE.jar /opt/app/ecom-config-server-1.0.0.RELEASE.jar
COPY ${JAR_FILE} ecom-config-server-1.0.0.RELEASE.jar

# java -jar /opt/app/ecom-config-server-1.0.0.RELEASE.jar
ENTRYPOINT ["java","-jar","ecom-config-server-1.0.0.RELEASE.jar"]
