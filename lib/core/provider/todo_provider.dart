import 'package:flutter/cupertino.dart';
import 'package:to_do_list/core/provider/todo.dart';

class ToDoProvider extends ChangeNotifier {
  final List<Todo> _todos = [];

  List<Todo> get todos => _todos.where((todo) => todo.isDone == false).toList();
  List<Todo> get todosCompleted => _todos.where((todo) => todo.isDone == true).toList();

  void AddToDo(Todo todo) {
    _todos.add(todo);
    notifyListeners();
  }

  void RemoveToDo(Todo todo) {
    _todos.remove(todo);
    notifyListeners();
  }

  bool ToggleToDoStatus(Todo todo) {
    todo.isDone = !todo.isDone;
    notifyListeners();

    return todo.isDone;
  }

  void UpdateToDo(
    Todo todo,
    String title,
    String description,
  ) {
    todo.title = title;
    todo.description = description;
    notifyListeners();
  }
}
