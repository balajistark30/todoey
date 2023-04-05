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
    return ListView.builder(
      itemBuilder: itemBuilder,
      itemCount: tasks.length,
    );
  }

  Widget? itemBuilder(BuildContext context, int index) {
    return TaskTile(tasks[index].isDone, tasks[index].name);
  }
}
