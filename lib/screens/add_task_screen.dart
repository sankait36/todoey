import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {

  final Function handleOnPressed;

  const AddTaskScreen({ this.handleOnPressed });

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 30.0,
                  color: Colors.lightBlueAccent,
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newValue) {
                  newTaskTitle = newValue;
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: FlatButton(
                  child: Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Pacifico',
                      fontSize: 18.0,
                    ),
                  ),
                  color: Colors.lightBlueAccent,
                  onPressed: () {
                    handleOnPressed(newTaskTitle);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
