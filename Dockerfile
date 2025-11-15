## 1단계: 빌드 스테이지 (BUILDER)
# 올바르고 일반적인 Maven/JDK 17 태그를 사용합니다.
FROM maven:3-jdk-17 AS builder

# 작업 디렉토리를 설정합니다.
WORKDIR /app

# 모든 소스 코드를 복사합니다.
COPY . .

# Maven 빌드를 실행하여 WAR 파일을 생성합니다.
RUN mvn clean package -DskipTests

## 2단계: 런타임 스테이지
# Tomcat 이미지를 사용하여 애플리케이션을 실행합니다.
FROM tomcat:9.0

# 빌드 스테이지에서 생성된 WAR 파일을 Tomcat의 ROOT 웹 앱으로 복사합니다.
COPY --from=builder /app/target/my_wsd_project1-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Tomcat을 실행합니다.
CMD ["catalina.sh", "run"]