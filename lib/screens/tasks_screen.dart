import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightGreen,
        body: Container(
          padding: const EdgeInsets.only(
              top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CircleAvatar(
                child: Icon(
                  Icons.list,
                  color: Colors.lightGreen,
                  size: 30.0,
                ),
                backgroundColor: Colors.white,
                radius: 30.0,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Todoey',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '12 Tasks',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ));
  }
}
