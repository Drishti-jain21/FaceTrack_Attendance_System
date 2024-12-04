from pymongo import MongoClient
from dotenv import load_dotenv, dotenv_values
import os
def get_database():
   
   load_dotenv()
   CONNECTION_STRING = os.getenv("MONGO_URL")
 
   client = MongoClient(CONNECTION_STRING)
   return client['IGDTUW']
  
if __name__ == "__main__":   
   dbname = get_database()