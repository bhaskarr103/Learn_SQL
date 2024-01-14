import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  database="your_db_name",
  password="your_sql_password",
  auth_plugin="mysql_native_password"
)

cursor = mydb.cursor()

# Return a list of your systems database.

cursor.execute("SHOW DATABASES")

for x in cursor:
    print(x)

# Creating a  table.
cursor.execute("CREATE TABLE customers (name VARCHAR(255), address VARCHAR(255))")


# o/p ->  '''('bhaskar-db',)
#('information_schema',)
#('mysql',)
#('performance_schema',)
#('python-db',)
#('sys',)
#('customers',)'''
 

# Check if the table exists.

cursor.execute("SHOW TABLES")

for x in cursor:
  print(x)

# o/p -> ('customers',)
  

# When creating a table, you should also create a column with a unique key for each record.

# We use the statement "INT AUTO_INCREMENT PRIMARY KEY" which will insert a unique number for each record. Starting at 1, and increased by one for each record.

cursor.execute("CREATE TABLE customers (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(255), address VARCHAR(255))")


# Create primary key on an existing table:

cursor.execute("ALTER TABLE customers ADD COLUMN id INT AUTO_INCREMENT PRIMARY KEY")
