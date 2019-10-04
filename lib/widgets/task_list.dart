import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {

  final List<Task> tasks;
  final Function toggleTaskDone;

  const TasksList({ this.tasks, this.toggleTaskDone });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: tasks[index].name,
          isChecked: tasks[index].isDone,
          handleOnChanged: (newValue) {
            toggleTaskDone(index);
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
