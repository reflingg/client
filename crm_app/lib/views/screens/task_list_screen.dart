import 'package:flutter/material.dart';
import 'task_detail_screen.dart';

class TaskListScreen extends StatelessWidget {
  const TaskListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("In Progress", style: TextStyle(color: Colors.black)),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.black,
            child: Text("2", style: TextStyle(color: Colors.white)),
          ),
          SizedBox(width: 10),
          IconButton(
            icon: Icon(Icons.add, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TaskCard(
            taskTitle: "Conduct Market Research",
            commentCount: 3,
            assignees: [
              Icons.person,
              Icons.person,
              Icons.person,
            ],
          ),
          TaskCard(
            taskTitle: "Develop Application Software",
            commentCount: 5,
            assignees: [
              Icons.person,
            ],
          ),
        ],
      ),
    );
  }
}

class TaskCard extends StatelessWidget {
  final String taskTitle;
  final int commentCount;
  final List<IconData> assignees;

  TaskCard({
    required this.taskTitle,
    required this.commentCount,
    required this.assignees,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      child: ListTile(
        title: Text(taskTitle, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            children: [
              Icon(Icons.comment, size: 16, color: Colors.grey),
              SizedBox(width: 4),
              Text("$commentCount ", style: TextStyle(color: Colors.grey)),
            ],
          ),
        ),
        trailing: SizedBox(
          width: 60, // Adjust the width as needed
          child: Stack(
            children: assignees.asMap().entries.map((entry) {
              int idx = entry.key;
              IconData icon = entry.value;
              return Positioned(
                left: idx * 16.0, // Adjust the overlap distance as needed
                child: CircleAvatar(
                  backgroundColor: Colors.grey.shade300,
                  child: Icon(icon, color: Colors.black),
                  radius: 12,
                ),
              );
            }).toList(),
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TaskDetailScreen()),
          );
        },
      ),
    );
  }
}
