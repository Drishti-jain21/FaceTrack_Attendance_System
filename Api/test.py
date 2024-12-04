from get_database import get_database
import os

dbname = get_database()
query = {
    "semester" : 7,
    "branch" : "CSE",
    "section" : 2
}
result = dbname.students.find(query)
os.mkdir('database')

student_id = []

for student in result:
    roll_number = student["_id"]
    student_id.append(roll_number)
    file_name = "./database/"+roll_number+".jpg"
    with open(file_name,"wb") as output_file:
        output_file.write(student["photo"])

for student in student_id:
    file_name = "./database/"+student+".jpg"
    print(student)