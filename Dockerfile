FROM java:8-jdk
COPY ./target/demo-0.0.1-SNAPSHOT.jar /app/
EXPOSE 8000
WORKDIR /app
CMD /bin/bash -c 'java -jar demo-0.0.1-SNAPSHOT.jar'