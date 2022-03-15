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
    return const ListTile(
      title: Text('This is the task.'),
      trailing: TaskCheckbox(
        checkboxState: false,
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  const TaskCheckbox({Key? key, required this.checkboxState}) : super(key: key);
  final bool checkboxState;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      // fillColor: MaterialStateProperty.resolveWith(getColor),
      value: checkboxState,
      onChanged: (newValue) {
        // setState(() {
        //   isChecked = newValue!;
        // });
      },
    );
  }
}
