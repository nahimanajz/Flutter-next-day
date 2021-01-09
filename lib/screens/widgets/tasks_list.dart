import 'package:flutter/material.dart';
import 'package:next_day/models/task_data.dart';
import 'package:provider/provider.dart';
import 'tasks_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task= taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkBoxCallBack: (checkBoxState){
                taskData.updateTask(task);
              },
              onLongPress: (){
                taskData.deleteTask(task);
              },

            );
          },
          itemCount: Provider.of<TaskData>(context).taskCount,

        );
      },
    );
  }
}
