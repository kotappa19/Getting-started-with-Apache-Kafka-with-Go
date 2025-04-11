# Getting started with Apache Kafka using Golang

## This is the Apache Kafka starter project using Golang

This project includes a kafka consumer and producer for receiving and sending messages

## Getting started

- Download Apache Kafka version 3.9.0

```bash
https://kafka.apache.org/downloads
```

- Unzip the installed zip file

```bash
tar -xzf kafka_2.13-3.9.0.tgz
```

- Set KAFKA_HOME environment variable

- Modify the log directories for both zookeeper and kafka broker to current directory (Optional)

- Start the Zookeeper

```bash
scripts/zookeeper-start.sh
```

- Start the Kafka broker

```bash
scripts/0-kafka-server-start.sh
```

- Create a topic - "purchases"

```bash
scripts/create-topic.sh
```

- Install Dependencies

```bash
go mod tidy
```

- Start the Kafka Consumer to receive messages

```bash
go run src/consumer/consumer.go
```

- Start the Kafka Producer to send messages

```bash
go run src/producer/producer.go
```

If everything works fine, you will see the messages in Kafka Consumer window, and if you have formatted the log directories to current directory, you will see the tmp directory where you can see the partitions and log files which contains data

Congratulations! You have successfully used Go client APIs to send and receive messages using Kafka broker.

