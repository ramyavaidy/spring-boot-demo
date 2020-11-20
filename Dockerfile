FROM java:8-jdk
RUN addgroup -S 1001 && adduser -S 1001 -G 1001
USER 1001:1001
COPY ./target/demo-0.0.1-SNAPSHOT.jar /app/
EXPOSE 8000
WORKDIR /app
CMD /bin/bash -c 'java -jar demo-0.0.1-SNAPSHOT.jar'
