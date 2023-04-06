import 'package:flutter/foundation.dart';
import 'package:todoey_mobile_app/models/task.dart';
import 'package:collection/collection.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task('Buy Milk', false),
    Task('Buy eggs', false),
    Task('Buy bread', false)
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(newTaskTitle, false);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    print('wchodze do updat');
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    print('wchodze do usuwania');
    _tasks.remove(task);
    notifyListeners();
  }
}
