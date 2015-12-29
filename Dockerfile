FROM java:8
RUN apt-get update && apt-get install -y maven

RUN mkdir /hspc
WORKDIR /hspc

ADD http://central.maven.org/maven2/org/eclipse/jetty/jetty-runner/9.3.6.v20151106/jetty-runner-9.3.6.v20151106.jar /hspc
COPY hspc.sh /hspc
COPY patches /hspc

RUN ./hspc.sh

CMD java -jar jetty-runner.jar reference-api/webapp/target/hsp-reference-api.war
