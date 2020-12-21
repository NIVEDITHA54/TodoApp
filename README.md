Spring Boot Todo App

About
This is a demo project for practicing Spring Boot + Bootstrap. It was made using Spring Boot, Bootstrap and Spring Data JPA. Database is in memory H2.
There is a login and registration functionality included.An authenticated user can add,delete and update todos.Non-authenticated users can see login and registration page.

Configuration Files
Folder src/resources/ contains config files for blog-demo Spring Boot application.

src/resources/application.properties - main configuration file. Here it is possible to change admin username/password, as well as change the port number

H2 Database web interface
Go to the web browser and visit http://localhost:8090/h2-console
In field JDBC URL put
jdbc:h2:file:./data/todo
In /src/main/resources/application.properties file it is possible to change both web interface url path, as well as the datasource url.
