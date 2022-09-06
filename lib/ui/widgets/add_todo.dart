import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/core/provider/todo.dart';
import 'package:to_do_list/core/provider/todo_provider.dart';
import 'package:to_do_list/ui/widgets/form_todo.dart';

class AddTodoWidget extends StatefulWidget {
  const AddTodoWidget({Key? key}) : super(key: key);

  @override
  State<AddTodoWidget> createState() => _AddTodoWidgetState();
}

class _AddTodoWidgetState extends State<AddTodoWidget> {
  final _formKey = GlobalKey<FormState>();

  String title = '';
  String description = '';

  @override
  Widget build(BuildContext context) => AlertDialog(
        content: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Add To Do',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.brown,
                ),
              ),
              const SizedBox(height: 15),
              ToDoFormWidget(
                onSavedTodo: AddTodoWidget,
                onChangedDescription: (description) =>
                    setState(() => this.description = description),
                onChangedTitle: (title) => setState(() => this.title = title),
              ),
            ],
          ),
        ),
      );
  void AddTodoWidget() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    } else {
      final todo = Todo(
        id: DateTime.now().toString(),
        title: title,
        description: description,
        createdTime: DateTime.now(),
      );
      final provider = Provider.of<ToDoProvider>(context, listen: false);
      provider.AddToDo(todo);
      Navigator.of(context).pop();
    }
  }
}
