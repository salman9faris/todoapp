import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todos/models/taskmodel.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: "wtaer"),
    Task(name: "buy milk"),
  ];

  UnmodifiableListView<Task> get taskList {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(newTitle) {
    var task = Task(name: newTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
