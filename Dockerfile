FROM java:8-jdk
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
COPY ./target/demo-0.0.1-SNAPSHOT.jar /app/
EXPOSE 8000
WORKDIR /app
CMD /bin/bash -c 'java -jar demo-0.0.1-SNAPSHOT.jar'
