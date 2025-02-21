import 'package:flutter/material.dart';

class TaskDetailScreen extends StatelessWidget {
  const TaskDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 241, 241, 241),
          title: Text("To Do", style: TextStyle(color: Colors.black)),
          leading: IconButton(
            icon: Icon(Icons.arrow_downward_sharp, color: Colors.black),
            onPressed: () => Navigator.pop(context),
          ),
          actions: [
            IconButton(
                icon: Icon(Icons.thumb_up, color: Colors.black),
                onPressed: () {}),
            IconButton(
                icon: Icon(Icons.delete,
                    color: const Color.fromARGB(255, 19, 6, 6)),
                onPressed: () {}),
            IconButton(
                icon: Icon(Icons.more_vert, color: Colors.black),
                onPressed: () {}),
          ],
          elevation: 0,
          bottom: TabBar(
            labelColor: Colors.black,
            indicatorColor: Colors.black,
            tabs: [
              Tab(text: "Overview"),
              Tab(text: "Subtask"),
              Tab(text: "Comments"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Design New Marketing Campaign",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text("Reporter:", style: TextStyle(color: Colors.grey)),
                      SizedBox(width: 20),
                      CircleAvatar(
                          backgroundColor: Colors.grey.shade300,
                          child: Icon(Icons.person, color: Colors.black)),
                      SizedBox(width: 8),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text("Assignee:", style: TextStyle(color: Colors.grey)),
                      SizedBox(width: 20),
                      CircleAvatar(
                          backgroundColor: Colors.grey.shade300,
                          child: Icon(Icons.person, color: Colors.black)),
                      SizedBox(width: 8),
                      CircleAvatar(
                          backgroundColor: Colors.grey.shade100,
                          child: Icon(Icons.add, color: Colors.black)),
                      SizedBox(width: 8),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text("Labels:", style: TextStyle(color: Colors.grey)),
                      SizedBox(width: 40),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 195, 236, 255),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              "Tech",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 23, 179, 251),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text("Due Date:", style: TextStyle(color: Colors.grey)),
                      SizedBox(width: 23),
                      Text("17-18 Dec-2025:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      SizedBox(width: 8),
                    ],
                  ),
                  SizedBox(height: 20),
                  // ...existing code...
                  Row(
                    children: [
                      Text("Priority:", style: TextStyle(color: Colors.grey)),
                      SizedBox(width: 20),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.green.shade100,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.low_priority, color: Colors.green),
                              Text("Low",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.green)),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.orange.shade100,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.priority_high, color: Colors.orange),
                              Text("Medium",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.orange)),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.red.shade100,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.priority_high, color: Colors.red),
                              Text("High",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.red)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
// ...existing code...
                  SizedBox(height: 16),
                  Text("Description",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text(
                      "This task involves creating a new campaign with fresh designs and innovative ideas."),
                ],
              ),
            ),
            Center(child: Text("Subtask Page")), // Placeholder for Subtask page
            Center(
                child: Text("Comments Page")), // Placeholder for Comments page
          ],
        ),
      ),
    );
  }
}
