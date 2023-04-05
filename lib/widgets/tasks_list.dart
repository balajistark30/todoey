import 'package:flutter/material.dart                                                              ';
import 'package:todoey_mobile_app/widgets/task_title.dart';
import 'package:todoey_mobile_app/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TasksList> {
  List<Task> tasks = [
    Task('Buy Milk', false),
    Task('Buy eggs', false),
    Task('Buy bread', false)
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(tasks[0].isDone, tasks[0].name),
        TaskTile(tasks[1].isDone, tasks[1].name),
        TaskTile(tasks[2].isDone, tasks[2].name),
      ],
    );
  }
}
