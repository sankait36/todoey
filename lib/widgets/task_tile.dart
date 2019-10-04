import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function handleLongPress;
  final Function handleOnChanged;

  TaskTile(
      {this.taskTitle,
      this.isChecked,
      this.handleOnChanged,
      this.handleLongPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: handleLongPress,
      title: Text(
        taskTitle,
        style: TextStyle(
          fontSize: 20.0,
          fontFamily: 'Pacifico',
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: handleOnChanged,
      ),
    );
  }
}
