FROM openjdk:15
ADD ./springform.jar springform.jar
ENTRYPOINT [ "java", ".jar", "springform.jar"]