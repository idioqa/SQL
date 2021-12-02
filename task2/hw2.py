import psycopg2
import names
import random

conn = psycopg2.connect(dbname='qa_ddl_24_40',
                        user='user_24_40',
                        password='123',
                        host='159.69.151.133',
                        port='5056')

cursor = conn.cursor()

#if conn:
 # print("Connection open")
 # values = "('" + names.get_full_name() + "')"
  #for i in range(69):
   # values += ", ('" + names.get_full_name() + "')"
  #insert_query = 'insert into employees (employee_name) values' + values;
  #cursor.execute(insert_query)
  #conn.commit()
  #cursor.close()
  #print("Connection closed")
  
if conn:
  print("Connection open")
  values = "(1, 1)"
  for i in range (39):
    rand = random.randint(1, 20)
    values += ', (' + str(i+2) + ', ' + str(rand) + ')'
    
  print(values)
  insert_query = 'insert into roles_employee (employee_id, role_id) values' + values;
  cursor.execute(insert_query)
  conn.commit()
  cursor.close()
  print("Connection closed")