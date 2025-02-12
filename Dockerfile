FROM openjdk:17-jdk-slim

WORKDIR /app

#Remote 환경에서 빌드된 jar 파일을 동일한 작업 dir에서 이미지로 만듦
COPY build/libs/*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]