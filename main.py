import mysql.connector
from mysql.connector import errorcode

config = {
  'user': 'admin',
  'password': 'NYYankees',
  'host': 'bballanalytics.coz99vsj8eej.us-east-2.rds.amazonaws.com',
  'database': 'baseball_db'
}

try:
  cnx = mysql.connector.connect(**config)
  print("Connected to RDS database") 
except mysql.connector.Error as err:
  if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
    print("Invalid credentials")
  elif err.errno == errorcode.ER_BAD_DB_ERROR:
    print("Database does not exist")
  else:
    print(err)
else:  
  cursor = cnx.cursor()

  # Query batters view  
  query = "SELECT * FROM batters"
  cursor.execute(query)
  batters = cursor.fetchall()  

  # Query fielders view
  query = "SELECT * FROM fielders"
  cursor.execute(query)
  fielders = cursor.fetchall()

  # Print some sample data
  print("Sample batters:")
  for i in range(5):
    print(batters[i])

  print("\nSample fielders:") 
  for i in range(5):
    print(fielders[i])

  cursor.close()
  cnx.close()

print("Done.")