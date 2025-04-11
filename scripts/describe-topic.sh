#!/bin/bash

# Exit immediately if a command fails
set -e

# Ensure KAFKA_HOME is set
if [ -z "$KAFKA_HOME" ]; then
    echo "Error: KAFKA_HOME is not set. Please set it before running this script."
    exit 1
fi

# List all existing Kafka topics
$KAFKA_HOME/bin/kafka-topics.sh --describe --bootstrap-server localhost:9092
