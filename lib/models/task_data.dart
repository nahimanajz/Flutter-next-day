import 'package:flutter/foundation.dart';
import 'task.dart';
import 'dart:collection';

class TaskData  extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: "Read a book"),
    Task(name: "Buy eggs"),
    Task(name: "BUY MILK")
  ];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);
  int get taskCount => _tasks.length;

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
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