import 'package:flutter/material.dart';
import '../models/task_model.dart';
import '../widgets/task_card.dart';

class TaskListScreen extends StatelessWidget {
  final String category;

  const TaskListScreen({required this.category, super.key});

  @override
  Widget build(BuildContext context) {
    List<Task> tasks = [
      Task(
        title: "Conduct Market Research",
        description: "Analyze competitors and industry trends.",
        category: category,
        priority: "High",
        dueDate: "Dec 20, 2025",
        comments: 3,
        assignees: ["Alice", "Bob"],
      ),
      Task(
        title: "Develop Application Software",
        description: "Start building the frontend and backend.",
        category: category,
        priority: "Medium",
        dueDate: "Jan 10, 2026",
        comments: 5,
        assignees: ["Charlie"],
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(category, style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: tasks.map((task) => TaskCard(task: task)).toList(),
      ),
    );
  }
}
