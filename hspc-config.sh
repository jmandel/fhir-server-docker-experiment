#!/bin/bash

cp patches/application.yml ./reference-api/reference-api-webapp/src/main/resources/application.yml
cp patches/auth.properties ./reference-auth/webapp/src/main/resources/config/auth.properties
mvn clean install -e -f reference-impl/pom.xml
