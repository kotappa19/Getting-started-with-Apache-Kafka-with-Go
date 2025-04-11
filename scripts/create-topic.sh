#!/bin/bash

# Exit immediately if a command fails
set -e

# Ensure KAFKA_HOME is set
if [ -z "$KAFKA_HOME" ]; then
    echo "Error: KAFKA_HOME is not set. Please set it before running this script."
    exit 1
fi

# Create topic 'purchases'
$KAFKA_HOME/bin/kafka-topics.sh --create --topic purchases --partitions 3 --replication-factor 1 --bootstrap-server localhost:9092
