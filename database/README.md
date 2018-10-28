# To configure database connectivity on local machine  
Have MySQL workbench installed (oracle version)  


open CSC 336 project and populate sql scripts and execute them in that order
to create QuizBase database.

3- there is an example_node_project in a zip file.
unzip the file, you do not even need to do "npm install" command, just
do "npm start".

note: before running the node proejct make sure you go to your_app.js and change
the password you set for the root user of server of mysql.

4-if you have a problem conncting to the database after doing "npm start", do not
freak out. this is a common problem because of encrypted password protocol. 
what to do is open file pass.sql in mysql workbench, then type in your password in place where it says
"your password goes here" and run the script. it should solve the problem.

5- after the server launches and connects to database successfully,
test the example of methods i have done(methods like update, insert, delete,
delete range and so on).

6- please try to integrate that code successfully to your front end (using React configuration)

note: this example node project only has methods for school schema, other methods of
other schemas in the database will follow if you confirmed that the code is working after integrating it
with the front end code you already have.


# Database Server Details
Server: sql9.freemysqlhosting.net  
Name: sql9263174  
Username: sql9263174  
Password: xMEalvnh1H  
Port number: 3306  
