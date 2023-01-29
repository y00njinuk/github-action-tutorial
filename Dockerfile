# Docker에 해당 이미지를 실행시킬 때 jdk11 버전으로 세팅
FROM openjdk:11

# JAR 파일의 위치
ARG JAR_FILE=./build/libs/github-action-tutorial-0.0.1-SNAPSHOT.jar

# JAR 파일을 app.jar로 변경
COPY ${JAR_FILE} app.jar

# java command
ENTRYPOINT ["java","-jar","/app.jar", "--spring.profiles.active=prod"]