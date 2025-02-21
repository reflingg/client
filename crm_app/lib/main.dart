import 'package:flutter/material.dart';
import 'views/screens/task_list_screen.dart';

void main() {
  runApp(CRMApp());
}

class CRMApp extends StatelessWidget {
  const CRMApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.black,
      ),
      home: TaskListScreen(),
    );
  }
}
