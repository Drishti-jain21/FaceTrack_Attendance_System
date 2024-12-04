import 'package:flutter/material.dart';
import 'package:teacher_application/pages/home/navbar.dart';
import 'package:teacher_application/pages/course/course.dart';
import 'package:teacher_application/pages/course/pop_up_dialog.dart';
import 'package:teacher_application/pages/face_recognition.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Course> courseList = [];

  @override
  Widget build(BuildContext context) {
    void addCourseData(Course course) {
      setState(() {
        courseList.add(course);
      });
    }

    void showCourseDialog() {
      showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            content: AddCourseDialog(addCourseData),
          );
        },
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Home Page"),
          backgroundColor: Colors.cyanAccent,
        ),
        drawer: Navbar(),
        floatingActionButton: new FloatingActionButton(
          onPressed: showCourseDialog,
          child: new Icon(Icons.add),
        ),
        body: Container(
          height: 400,
          child: ListView.builder(
            itemCount: courseList.length,
            itemBuilder: (count,index){
              return _card(index);
            }
          )
        )
      ),
    );
  }

  Widget _card(int index) {
    int semester = courseList[index].semester;
    String branch = courseList[index].branch;
    int section = courseList[index].section;
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 8,
      child: InkWell(
          splashColor: Colors.white24,
        onTap: () {
            Navigator.push(
              context,
                MaterialPageRoute(
                    builder: (BuildContext context) =>FaceRecognition(semester: semester, branch: branch, section: section)
                )
            );
        },
        child: Column(
          children: [
            Text(
              'Course Id: ${courseList[index].courseId}',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Course Name: ${courseList[index].courseName}',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Semester: ${courseList[index].semester.toString()}',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Branch: ${courseList[index].branch}',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Section: ${courseList[index].section.toString()}',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        )
      )
    );
  }
}