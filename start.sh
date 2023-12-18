curl --location --request POST 'localhost:30001/connectors' \
--header 'Content-Type: application/json' \
--data-raw '{
  "name": "order-payment-connector",
  "config": {
      "connector.class": "io.debezium.connector.postgresql.PostgresConnector",
      "tasks.max": "1",
      "database.hostname": "postgres-postgresql.default.svc.cluster.local",
      "database.port": "5432",
      "database.user": "postgres",
      "database.password": "minh00714124869",
      "database.dbname" : "postgres",
      "database.server.name": "PostgreSQL-15",
      "table.include.list": "order.payment_outbox",
      "topic.prefix": "debezium",
      "tombstones.on.delete" : "false",
      "slot.name" : "order_payment_outbox_slot",
      "plugin.name": "pgoutput",
      "auto.create.topics.enable": false,
      "auto.register.schemas": false
      }
 }'

curl --location --request POST 'localhost:30001/connectors' \
--header 'Content-Type: application/json' \
--data-raw '{
  "name": "order-restaurant-connector",
  "config": {
      "connector.class": "io.debezium.connector.postgresql.PostgresConnector",
      "tasks.max": "1",
      "database.hostname": "postgres-postgresql.default.svc.cluster.local",
      "database.port": "5432",
      "database.user": "postgres",
      "database.password": "minh00714124869",
      "database.dbname" : "postgres",
      "database.server.name": "PostgreSQL-15",
      "table.include.list": "order.restaurant_approval_outbox",
      "topic.prefix": "debezium",
      "tombstones.on.delete" : "false",
      "slot.name" : "order_restaurant_approval_outbox_slot",
      "plugin.name": "pgoutput",
      "auto.create.topics.enable": false,
      "auto.register.schemas": false
      }
 }'

curl --location --request POST 'localhost:30001/connectors' \
--header 'Content-Type: application/json' \
--data-raw '{
  "name": "payment-order-connector",
  "config": {
      "connector.class": "io.debezium.connector.postgresql.PostgresConnector",
      "tasks.max": "1",
      "database.hostname": "postgres-postgresql.default.svc.cluster.local",
      "database.port": "5432",
      "database.user": "postgres",
      "database.password": "minh00714124869",
      "database.dbname" : "postgres",
      "database.server.name": "PostgreSQL-15",
      "table.include.list": "payment.order_outbox",
      "topic.prefix": "debezium",
      "tombstones.on.delete" : "false",
      "slot.name" : "payment_order_outbox_slot",
      "plugin.name": "pgoutput",
      "auto.create.topics.enable": false,
      "auto.register.schemas": false
      }
 }'

curl --location --request POST 'localhost:30001/connectors' \
--header 'Content-Type: application/json' \
--data-raw '{
  "name": "restaurant-order-connector",
  "config": {
      "connector.class": "io.debezium.connector.postgresql.PostgresConnector",
      "tasks.max": "1",
      "database.hostname": "postgres-postgresql.default.svc.cluster.local",
      "database.port": "5432",
      "database.user": "postgres",
      "database.password": "minh00714124869",
      "database.dbname" : "postgres",
      "database.server.name": "PostgreSQL-15",
      "table.include.list": "restaurant.order_outbox",
      "topic.prefix": "debezium",
      "tombstones.on.delete" : "false",
      "slot.name" : "restaurant_order_outbox_slot",
      "plugin.name": "pgoutput",
      "auto.create.topics.enable": false,
      "auto.register.schemas": false
      }
 }'

echo "Start-up completed"