import 'package:flutter/foundation.dart';
import 'package:todoey_mobile_app/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task('Buy Milk', false),
    Task('Buy eggs', false),
    Task('Buy bread', false)
  ];

  int get taskCount {
    return tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(newTaskTitle, false);
    tasks.add(task);
    notifyListeners();
  }
}
