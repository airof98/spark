#!/bin/bash

docker run -u $(id -u) -p 8080:8080 --rm -v $PWD/logs:/logs -v $PWD/notebook:/notebook \
  -v $PWD/spark-3.1.2-bin-hadoop3.2:/opt/spark \
  -v $PWD/flink-1.13.2:/opt/flink \
  -e FLINK_HOME=/opt/flink \
  -e SPARK_HOME=/opt/spark \
  -e ZEPPELIN_LOG_DIR='/logs' -e ZEPPELIN_NOTEBOOK_DIR='/notebook' --name zeppelin apache/zeppelin:0.10.0
