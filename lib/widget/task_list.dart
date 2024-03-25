import 'package:flutter/material.dart';

import 'package:todos/widget/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todos/models/task_data.dart';

class Tasklist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final _task = taskData.taskList[index];
          return Tasktile(
            isChecked: _task.isDone,
            taskTitle: _task.name,
            checkBoxcallback: (checkBoxState) {
              taskData.updateTask(_task);
            },
            longPressCallback: () {
              taskData.deleteTask(_task);
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
