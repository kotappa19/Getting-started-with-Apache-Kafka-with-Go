#!/bin/bash

# Ensure KAFKA_HOME is set
if [ -z "$KAFKA_HOME" ]; then
    echo "Error: KAFKA_HOME is not set. Please set it before running this script."
    exit 1
fi

# Start Kafka server using server-2.properties
"$KAFKA_HOME/bin/kafka-server-start.sh" "$KAFKA_HOME/config/server-1.properties"
