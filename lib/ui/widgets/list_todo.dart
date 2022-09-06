import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/ui/widgets/todo_widget.dart';
import 'package:to_do_list/core/provider/todo_provider.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({Key? key}) : super(key: key);

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ToDoProvider>(context);
    final todos = provider.todos;
    return todos.isEmpty
        ? const Center(
            child: Text(
              'No Todos',
              style: TextStyle(
                fontSize: 20,
                color: Colors.brown,
              ),
            ),
          )
        : ListView.separated(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(16),
            separatorBuilder: (context, index) => Container(height: 10),
            itemCount: todos.length,
            itemBuilder: (context, index) {
              final todo = todos[index];
              return ToDoWidget(todo: todo);
            },
          );
  }
}
