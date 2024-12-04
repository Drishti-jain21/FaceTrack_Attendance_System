import 'package:flutter/material.dart';
import 'course.dart';

class AddCourseDialog extends StatefulWidget {

  final Function(Course) addCourse;
  AddCourseDialog(this.addCourse);

  @override
  _AddCourseDialogState createState() => _AddCourseDialogState();
}

class _AddCourseDialogState extends State<AddCourseDialog> {

  @override
  Widget build(BuildContext context) {
    Widget buildTextField(String hint, TextEditingController controller) {
      return Container(
        margin: EdgeInsets.all(4),
        child: TextField(
          decoration: InputDecoration(
            labelText: hint,
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black38,
              ),
            ),
          ),
          controller: controller,
        ),
      );
    }

    var courseIdController = TextEditingController();
    var courseNameController = TextEditingController();
    var branchController = TextEditingController();
    var semesterController = TextEditingController();
    var sectionController = TextEditingController();

    return Container(
      padding: EdgeInsets.all(8),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Add Course',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: Colors.blueGrey,
              ),
            ),
            buildTextField('Course ID', courseIdController),
            buildTextField('Course Name', courseNameController),
            buildTextField('Semester', semesterController),
            buildTextField('Branch', branchController),
            buildTextField('Section', sectionController),
            ElevatedButton(
              onPressed: () {

                final course = Course(courseIdController.text, courseNameController.text,
                    int.parse(semesterController.text), branchController.text, int.parse(sectionController.text));
                widget.addCourse(course);
                Navigator.of(context).pop();

              },
              child: Text('Add Course'),
            ),
          ],
        ),
      ),
    );
  }
}