import 'package:flutter/material.dart';
import 'package:next_day/models/task.dart';
import 'tasks_tile.dart';
class TasksList extends StatefulWidget {
  final List<Task> tasks;
  TasksList(this.tasks);

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
      return TaskTile(
        taskTitle: widget.tasks[index].name,
        isChecked: widget.tasks[index].isDone,
        checkBoxCallBack:(newValue){
          setState(() {
            widget.tasks[index].toggleDone();
          });
          print(newValue);
        },
      );
    },
    itemCount: widget.tasks.length,
    );
  }
}