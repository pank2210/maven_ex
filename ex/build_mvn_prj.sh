
#!/usr/bin/sh 

#maven compile, a target dir is populated in target/classes
mvn compile

#maven test, a src/test/.../AppTest.java is invoked for testing
mvn test

#maven install, a my-app-1.0-SNAPSHOT.jar is generated as installable repos
mvn install

