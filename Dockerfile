FROM java:8
#COPY HelloWorld.java /
ENV FOO bar
COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
RUN apt-get update && apt-get install -y vim wget
#ENTRYPOINT ["java","HelloWorld"]
ENTRYPOINT ["java","-cp","bin","HelloWorld"]
