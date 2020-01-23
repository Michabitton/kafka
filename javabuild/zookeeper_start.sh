#!/bin/bash

#RUN Zookeeper

exec "/kafka/kafka/bin/zookeeper-server-start.sh" "/kafka/kafka/config/zookeeper.properties" &
