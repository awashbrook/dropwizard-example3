FROM openjdk:8-jdk

# copy dropwizard app config & fat jar
COPY target/dropwizard-example3-1.0-SNAPSHOT.jar /data/dropwizard-example/dropwizard-example3-1.0-SNAPSHOT.jar 
COPY config.yml /data/dropwizard-example/config.yml 
 
WORKDIR /data/dropwizard-example
 
RUN java -version
 
CMD ["java","-jar","dropwizard-example3-1.0-SNAPSHOT.jar","server","config.yml"]
 
EXPOSE 8080-8081
