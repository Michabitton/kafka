FROM openjdk:8

WORKDIR kafka

ADD zookeeper_start.sh ./zookeeper_start.sh
ADD kafka_start.sh ./kafka_start.sh

RUN apt-get update -y
RUN apt install wget -y

RUN wget http://apache.spd.co.il/kafka/2.4.0/kafka_2.12-2.4.0.tgz
RUN tar -xzvf kafka_2.12-2.4.0.tgz
RUN mv kafka_2.12-2.4.0 kafka

#RUN apt-get update -y
#RUN apt install openjdk-11-jre-headless -y
#RUN apt install default-jre -y
RUN apt install kafkacat -y

ENV KAFKA_HEAP_OPTS="-Xmx256M -Xms256M"
#ENV PATH=$PATH:/~/kafka
EXPOSE 2181
EXPOSE 9092

RUN chmod 777 zookeeper_start.sh
RUN chmod 777 kafka_start.sh

ENTRYPOINT ["bash"]
#CMD /kafka/zookeeper_start.sh &
#CMD ["bash"]
