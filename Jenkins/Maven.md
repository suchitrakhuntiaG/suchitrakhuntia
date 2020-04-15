# Maven

Apache Maven is a build automation tool primarily used for building Java applications.

Maven is built using a plugin-based architecture that allows it to make use of any application controllable through standard input. 

A plugin for the .NET framework exists and is maintained,and a C/C++ native plugin is maintained for Maven 2.

## Pre-requisites

Install maven on the master and slave nodes.

Follow the instructions in the [Official Documentation](https://maven.apache.org/)

Make sure the Maven binaries are extacted to a location which is part of the PATH.

To Verify if the maven is correctly installed run

```bash
mvn --version
```

## Set up in Console.

Once you install maven, go to console in your browser and follow the below steps
1. Click on manage jenkins --> Global Tool Configuration 
2. Scroll down to maven and click on maven installations. 
3. Add Maven path

