FROM openjdk:8
EXPOSE 8080
ADD lib/build/libs/lib.jar lib.jar
ENTRYPOINT ["java","-jar","/lib.jar"]
