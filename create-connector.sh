curl -X POST \
  'http://localhost:8083/connectors' \
  --header 'Accept: */*' \
  --header 'Content-Type: application/json' \
  --data-raw '{
  "name": "inventory-connector",
  "config": {
    "connector.class": "io.debezium.connector.mysql.MySqlConnector",
    "tasks.max": "1",
    "database.hostname": "mysql",
    "database.port": "3306",
    "database.user": "root",
    "database.password": "debezium",
    "database.server.id": "184054",
    "topic.prefix": "dbserver",
    "database.include.list": "inventory",
    "schema.history.internal.kafka.bootstrap.servers": "broker:29092",
    "schema.history.internal.kafka.topic": "schemahistory.inventory"
  }
}'