#!/bin/bash

java $JAVA_OPTS -jar target/dependency/webapp-runner.jar --port $PORT target/*.war

java -javaagent:/app/newrelic/newrelic.jar -cp target/classes:target/dependency/* Main
