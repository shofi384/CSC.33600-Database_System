# To configure database connectivity on local machine  
Have MySQL installed  
Run 'mysqld' command to run the server  
Run 'mysql -u root -p' to access DBMS as root user  
Run "CREATE USER 'username'@'localhost' IDENTIFIED BY 'password';" to create a DBMS user  
Now, in mysql environment, run "CREATE DATABASE dbname"  to create a database  
Run "GRANT ALL PRIVILEGES ON dbname.* TO 'username'@'localhost';" to grant user access to the database dbname  
> Now, log out and log in as the new created user: run mysql -u username -p  
Run a sql script as "mysql -u username -p < script.sql"  
Or alternatively from MySQL environment "source ../createSchemas.sql"
and . . . play around, we have all the scripts needed!  

# Database Server Details  
> Hosted on https://www.freemysqlhosting.net/  
Server: sql9.freemysqlhosting.net  
Name: sql9263174  
Username: sql9263174  
Password: xMEalvnh1H  
Port number: 3306  


GRANT [type of permission] ON [database name].[table name] TO '[username]'@'[host name or IP address]';