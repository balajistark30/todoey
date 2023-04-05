import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTitleState createState() => _TaskTitleState();
}

class _TaskTitleState extends State<TaskTile> {
  bool isChecked = false;

  void checkboxCallback(bool? checkboxState) {
    setState(() {
      isChecked = checkboxState!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task',
        style: TextStyle(
            fontSize: 20.0,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(
        checkboxState: isChecked,
        toggleCheckboxState: checkboxCallback,
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final Function(bool?) toggleCheckboxState;

  TaskCheckbox(
      {required this.checkboxState, required this.toggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxState,
      onChanged: toggleCheckboxState,
      activeColor: Colors.lightGreen,
    );
  }
}
