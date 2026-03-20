FROM openjdk:8

ADD target/maven_project.war app.war

ENTRYPOINT ["java", "-war", "app.war"]