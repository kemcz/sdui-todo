import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/core/provider/todo.dart';
import 'package:to_do_list/core/provider/todo_provider.dart';
import 'package:to_do_list/ui/widgets/form_todo.dart';

class EditToDo extends StatefulWidget {
  final Todo todo;

  const EditToDo({
    Key? key,
    required this.todo,
  }) : super(key: key);

  @override
  State<EditToDo> createState() => _EditToDoState();
}

class _EditToDoState extends State<EditToDo> {
  final _formKey = GlobalKey<FormState>();
  String title = '';
  String description = '';

  @override
  void initState() {
    super.initState();
    title = widget.todo.title;
    description = widget.todo.description;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text(
            'Edit To Do',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.brown,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.add,
                color: Colors.brown,
              ),
              onPressed: () {
                final provider =
                    Provider.of<ToDoProvider>(context, listen: false);
                provider.RemoveToDo(widget.todo);
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: ToDoFormWidget(
                title: title,
                description: description,
                onSavedTodo: SavedToDo,
                onChangedDescription: (description) =>
                    setState(() => this.description = description),
                onChangedTitle: (title) => setState(() => this.title = title),
              ),
            ),
          ),
        ),
      );

  void SavedToDo() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    } else {
      final provider = Provider.of<ToDoProvider>(context, listen: false);
      provider.UpdateToDo(
        widget.todo,
        title,
        description,
      );
      Navigator.of(context).pop();
    }
  }
}
