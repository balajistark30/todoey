import 'package:flutter/material.dart                                                              ';
import 'package:todoey_mobile_app/widgets/task_title.dart';
import 'package:todoey_mobile_app/models/task.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  TasksList(this.tasks);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: itemBuilder,
      itemCount: widget.tasks.length,
    );
  }

  Widget? itemBuilder(BuildContext context, int index) {
    return TaskTile(
      widget.tasks[index].isDone,
      widget.tasks[index].name,
      (bool? checkboxState) {
        setState(
          () {
            widget.tasks[index].toggleDone();
          },
        );
      },
    );
  }
}
