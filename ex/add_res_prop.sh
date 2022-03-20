
#!/usr/bin/sh 


#############################################################
#add properties file in resource, 
#  helps to bring pom.xml data to code
#############################################################
#add app.properties in src/main/resources with variables
mkdir -p src/main/resources
echo "application.name=${project.name}" >> src/main/resources/application.properties
echo "application.version=${project.version}" >> src/main/resources/application.properties
#add following content to pom.xml
# <build>
#   <resources>
#     <resource>
#       <directory>src/main/resources/application.properties</directory>
#       <filtering>true</filtering>
#     </resource>
#   </resources>
# </build>
#
#running "mvn process-resources" 
#  - it will create properties file in target and $ names are 
#       and replace project.name with actual name/value form pom.xml
#       and replace project.version with actual name/value form pom.xml
#
# run build
mvn clean
mvn install
cat target/classes/application.properties
#
#############################################################

