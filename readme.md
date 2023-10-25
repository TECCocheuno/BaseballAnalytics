STEPS TO DO ASSIGNMENT 4 because  my professor is such a nice guy

1. log into github
2. log into replit.com by selecting the log into github button
3.  create python replit baseballanalytics
4.  click on the git tool
5.  initialize repository
6.  click on setting icon in git screen
7,  click the create repository on github button.  the remote url should be populated.
8.  create the code we need from AI.  here is the prompt used:

  Act like an expert in Python, MySQL SQL, AWS MySQL RDS, replit.com, GitHub.com, and MySQL Workbench.  We need to create a baseball analytics database.  We need to create a Python program to interface with the database.  The database will be in AWS MySQL RDS.  It will be created and managed using MySQL Workbench.  The Python code will run in replit.com in a repository there called BaseballAnalytics.  This repository is connected to a Github repository.  We need two code files created.  The first file is a MySQL SQL file that will execute in MySQL Workbench to create and manage the AWS RDS database.  This file in SQL must create the database, create the tables for a team, offensive players, defensive players where each player can be an infielder, outfielder, catcher, and pitcher.  Each player can bat expect for the pitcher.  The pitcher and catcher cannot be an infielder or outfielder and vice versa.  The SQL file must create 5 baseball analytics to be stored in the database.  The SQL file must create two views that can be used in the Python file to execute.  The SQL file must create the data for a team, 10 infielders, 10 outfielders, 5 pitchers, and two catchers.  The data has to provide each player's name, position, and offensive and defensive data.  The SQL file and the Python file must be the actual code needed.  The data for the database must be complete and not contain just a subset of the data required.

  9.  Put the SQL code into a file in replit.  I used baseballdb.sql.
  10.  Go to AWS and set up the database instance.  Make sure you use the Free Tier and the Public Access parameters.  Do not set up a custom vpc security group.
  11.  Go to MySQL Workbench and create a connection to the AWS database.
  12.  click on the RDS instance name and then click on the VPC security group link.
  13.  edit and then delete the existing inbound rule.
  14.  Add a new rule with ALL TRAFFIC as the TYPE, the SOURCE is Anywhere-IPv4, and then click on SAVE.  YOu should see a progress bar pop up quickly.
  15.  Go back to the RDS instance and copy the Endpoint value and put it into the HOSTNAME box in the MySQL Connection dialog box.
  16.  Click on TEST COnnection and it should show a successful connection dialog box.
  17.  Click on the MySQL Workbench connection and the SQL editor should show up.
  18.  Copy the contents of baseballdb.sql into the MySQL Workbench query window.
  19.  Click on the lightening bolt at the top to execute the query.  You should get all green at the bottom to show that the query executed properly.
  20.  Now we want to create a Python program to connect to the database and execute the two views.  Here is the  prompt we used:

  Create a python program that will connect to this AWS RDS MySQL database and execute the two views.

  21.  Copy the Python code into main.py.  Update the database connection information and run it.
  22.  The program when run should open up a CONSOLE window and display the results.
  23.  Push the files to GitHub.
