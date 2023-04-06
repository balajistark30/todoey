import 'package:flutter/material.dart                                                              ';
import 'package:todoey_mobile_app/widgets/task_title.dart';
import 'package:provider/provider.dart';
import 'package:todoey_mobile_app/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: itemBuilder,
          itemCount: taskData.taskCount,
        );
      },
    );
  }

  Widget? itemBuilder(BuildContext context, int index) {
    return TaskTile(
      Provider.of<TaskData>(context).tasks[index].isDone,
      Provider.of<TaskData>(context).tasks[index].name,
      (bool? checkboxState) {
        // setState(
        //   () {
        //     Provider.of<TaskData>(context).tasks[index].toggleDone();
        //   },
        // );
      },
    );
  }
}
