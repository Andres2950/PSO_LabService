# PSO_LabService
Laboratorio de sercios de PSO 


# lab depemnciedias

https://docs.google.com/document/d/1a12tTge9tk0LUATUwzwNKEjIoB5q6Jw86fxCJsyxOmA/edit?tab=t.0

# COMPILAR 
```Java
javac --module-path $PATH_TO_FX --add-modules javafx.controls HelloFX.java
```

# CORRER 
```Java
java --module-path $PATH_TO_FX --add-modules javafx.controls HelloFX
```

#FROM eclipse-temurin:21-jdk
FROM openjdk:26-ea-trixie
#LABEL maintainer="oscar"

RUN mkdir /usr/src/app
COPY . /usr/src/app
WORKDIR /usr/src/app


RUN javac --module-path javafx-sdk-25.0.1/lib/ --add-modules javafx.controls HelloFX.java
CMD ["java", "--enable-native-access=javafx.graphics", "--module-path", "javafx-sdk-25.0.1/lib/", "--add-modules", "javafx.controls", "HelloFX"]
