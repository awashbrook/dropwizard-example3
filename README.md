# HelloWorld

How to start the HelloWorld application
---

1. Run `mvn clean install` to build your application
1. Start application with `java -jar target/dropwizard-example3-1.0-SNAPSHOT.jar server config.yml`
1. To check that your application is running enter url `http://localhost:8080/hello-world`
To see your applications health enter url http://localhost:8081/
Verify application healthcheck with 'curl http://localhost:8081/healthcheck' 

# Building a Docker image
docker build -t dropwizard-example3 .

Dockerfile exposes ports 4000,4001
Health Check
---

# Docker port mapping the dual webapp and health endpoints of DropWizard
docker run -p 8080:8080 -p 8081:8081 dropwizard-example3
 
You should see Hello-world app starting up

================================================================================

                              HelloWorld

================================================================================

INFO  [2021-09-08 14:56:17,781] org.eclipse.jetty.setuid.SetUIDListener: Opened application@173b9122{HTTP/1.1, (http/1.1)}{0.0.0.0:8080}
INFO  [2021-09-08 14:56:17,782] org.eclipse.jetty.setuid.SetUIDListener: Opened admin@7c18432b{HTTP/1.1, (http/1.1)}{0.0.0.0:8081}
INFO  [2021-09-08 14:56:17,785] org.eclipse.jetty.server.Server: jetty-9.4.43.v20210629; built: 2021-06-30T11:07:22.254Z; git: 526006ecfa3af7f1a27ef3a288e2bef7ea9dd7e8; jvm 1.8.0_302-b08
INFO  [2021-09-08 14:56:18,586] io.dropwizard.jersey.DropwizardResourceConfig: The following paths were found for the configured resources:

    GET     /hello-world (com.test.dropwizard.resources.HelloWorldResource)

# Tagging and pushing images up to Dockerhub
docker tag dropwizard-example3:latest awashbrook/
dropwizard-example3:latest

docker push awashbrook/dropwizard-example3:latest
