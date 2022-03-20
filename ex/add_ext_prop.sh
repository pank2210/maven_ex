
#!/usr/bin/sh 

#############################################################
#add reference to external properties file 
#  helps to bring external data to code
#############################################################
#add app.properties in src/main/resources with variables
mkdir -p src/main/app_resources
echo "app.data='data path'" >> src/main/app_resources/app.properties
echo "app.log='log path'" >> src/main/app_resources/app.properties
echo "application.data=${app.data}" >> src/main/resources/application.properties
echo "application.log=${app.log}" >> src/main/resources/application.properties
#add following content to pom.xml
# <build>
#   <filters>
#     <filter>src/main/app_resources/app.properties</filter>
#   </filters>
# </build>
#
#running "mvn process-resources" 
#  - it will create properties file in target and $ names are 
#       and replace application.data with actual name/value form app.properties
#       and replace application.log with actual name/value form app.properties
#
# run build
mvn clean
mvn install
cat target/classes/application.properties
#
#############################################################

