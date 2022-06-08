import 'package:flutter/material.dart';
import 'package:next_day/models/task_data.dart';
import 'package:provider/provider.dart';

String newTaskTitle;

class AddTaskScreen extends StatelessWidget {
  var isKeyboardOpen = false;
  @override
  Widget build(BuildContext context) {
    isKeyboardOpen = MediaQuery.of(context).viewInsets.bottom != 0;
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if(!isKeyboardOpen) Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newValue) => newTaskTitle = newValue,
            ),

            ElevatedButton(
              child: Text(
                'Add',
                style: TextStyle(
                    fontSize: 24, color: Color(0xffFFFFFF)),
              ),
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(newTaskTitle);
                Navigator.pop(context);
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.lightBlueAccent),
                  padding: MaterialStateProperty.all(EdgeInsets.all(2.0)),
                  textStyle:
                      MaterialStateProperty.all(TextStyle(fontSize: 30))),
            ),
          ],
        ),
      ),
    );
  }
}
