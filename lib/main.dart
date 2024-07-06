import 'package:flutter/material.dart';
import 'package:school_management_system/Authentication/login.dart';

void main() {
  runApp(const SchoolManagementSystem());
}

class SchoolManagementSystem extends StatefulWidget {
  const SchoolManagementSystem({super.key});

  @override
  State<SchoolManagementSystem> createState() => _SchoolManagementSystemState();
}

class _SchoolManagementSystemState extends State<SchoolManagementSystem> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
