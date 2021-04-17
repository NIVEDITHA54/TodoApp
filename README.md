Spring Boot Todo App


About

This is a demo project for practicing Spring Boot + Bootstrap built using Spring Boot, Bootstrap, Spring Data JPA,H2 database. The app provides login and registration functionality, where in, an authenticated user can perform CRUD operations on Todo object. Non-authenticated users can only access login and registration page.

Configuration Files

Folder src/resources/ contains config files for blog-demo Spring Boot application.
src/resources/application.properties - main configuration file. Here it is possible to change admin username/password, as well as change the port number

H2 Database web interface

Go to the web browser and visit http://localhost:8080/h2-console
In field JDBC URL put
jdbc:h2:file:./data/todo
In /src/main/resources/application.properties file it is possible to change both web interface url path, as well as the datasource url.
