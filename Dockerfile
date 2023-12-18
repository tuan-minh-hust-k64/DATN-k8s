FROM debezium/connect:2.2
WORKDIR /app
COPY ./debezium /kafka/connect/debezium-connector-schemaregistry-7.2.5