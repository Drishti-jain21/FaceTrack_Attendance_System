from get_database import get_database
from bson.binary import Binary

dbname = get_database()
collection_name = dbname["students"]

with open('./tmp/09701012021.jpeg',"rb") as image_file:
    image_data = image_file.read()

student_1 = {
  "_id" : "09701012021",
  "name" : "Drishti Jain",
  "email_id" : "drishti097btcse21@igdtuw.ac.in",
  "semester" : 7,
  "branch" : "CSE",
  "section" : 2,
  "photo" : Binary(image_data)
}

with open('./tmp/08101012021.jpg',"rb") as image_file:
    image_data = image_file.read()

student_2 = {
  "_id" : "08101012021",
  "name" : "Reena",
  "email_id" : "reena081btcse21@igdtuw.ac.in",
  "semester" : 7,
  "branch" : "CSE",
  "section" : 2,
  "photo" : Binary(image_data)
}

with open('./tmp/10901012021.jpg',"rb") as image_file:
    image_data = image_file.read()

student_3 = {
  "_id" : "10901012021",
  "name" : "Nidhi Chaudhary",
  "email_id" : "nidhi109btcse21@igdtuw.ac.in",
  "semester" : 7,
  "branch" : "CSE",
  "section" : 2,
  "photo" : Binary(image_data)
}

with open('./tmp/11501012021.jpeg',"rb") as image_file:
    image_data = image_file.read()

student_4 = {
  "_id" : "11501012021",
  "name" : "Agrima Gupta",
  "email_id" : "agrima115btcse21@igdtuw.ac.in",
  "semester" : 7,
  "branch" : "CSE",
  "section" : 2,
  "photo" : Binary(image_data)
}

with open('./tmp/12301012021.jpg',"rb") as image_file:
    image_data = image_file.read()

student_5 = {
  "_id" : "12301012021",
  "name" : "Udita Verma",
  "email_id" : "udita123btcse21@igdtuw.ac.in",
  "semester" : 7,
  "branch" : "CSE",
  "section" : 2,
  "photo" : Binary(image_data)
}

collection_name.insert_many([student_1,student_2,student_3,student_4,student_5])