import 'package:flutter/material.dart';

class Course{
  final String courseId;
  final String courseName;
  final int semester;
  final String branch;
  final int section;


  Course(this.courseId, this.courseName, this.semester, this.branch, this.section);
}