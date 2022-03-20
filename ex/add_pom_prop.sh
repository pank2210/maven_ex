
#!/usr/bin/sh 

#############################################################
#add prop in pom and use it
#  helps to bring external data to code
#############################################################
#add app.properties in src/main/resources with variables
echo "application.pom.env=${app.data}" >> src/main/resources/application.properties
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

