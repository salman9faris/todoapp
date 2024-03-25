import 'package:flutter/material.dart';

class Tasktile extends StatelessWidget {
  bool isChecked = false;
  String? taskTitle;
  Function? checkBoxcallback;
  final void Function()? longPressCallback;

  Tasktile(
      {required this.isChecked,
      this.taskTitle,
      this.checkBoxcallback,
      this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle.toString(),
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkBoxcallback as void Function(bool?),
        activeColor: Color(0xff25a7a7),
      ),
    );
  }
}
