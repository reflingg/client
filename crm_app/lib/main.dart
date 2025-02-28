import 'package:flutter/material.dart';
import 'views/screens/task_category_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TaskCategoryScreen(),
    );
  }
}
