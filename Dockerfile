FROM tomcat:9.0

# WAR 파일을 복사하면서 이름을 ROOT.war로 변경합니다.
ADD target/my_wsd_project1-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

CMD ["catalina.sh", "run"]