import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({Key? key}) : super(key: key);

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is the task.',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(
          checkboxState: isChecked,
          togglecheckboxState: (bool? checkboxState) {
            setState(() {
              isChecked = checkboxState!;
            });
          }),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  const TaskCheckbox(
      {Key? key,
      required this.checkboxState,
      required this.togglecheckboxState})
      : super(key: key);
  final bool checkboxState;
  final Function(bool?) togglecheckboxState;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: togglecheckboxState,
    );
  }
}
