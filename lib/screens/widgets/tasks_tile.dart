import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallBack;
  TaskTile({this.isChecked, this.taskTitle, this.checkBoxCallBack});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      value: isChecked,
      onChanged:checkBoxCallBack,
    );
  }
}
/*
class TaskCheckBox extends StatelessWidget {
  TaskCheckBox({this.isChecked, this.toggleCheckBox});
  final bool isChecked;
  final Function toggleCheckBox;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
        title: Text(
          'Buying Milk',
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: toggleCheckBox);
  }
}
 */
