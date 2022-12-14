import 'package:flutter/material.dart';

class ToDoFormWidget extends StatelessWidget {
  final String title;
  final String description;
  final ValueChanged<String> onChangedTitle;
  final ValueChanged<String> onChangedDescription;
  final VoidCallback onSavedTodo;

  const ToDoFormWidget({
    Key? key,
    this.title = '',
    this.description = '',
    required this.onChangedTitle,
    required this.onChangedDescription,
    required this.onSavedTodo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              maxLines: 1,
              initialValue: title,
              onChanged: onChangedTitle,
              validator: (title) {
                if (title!.isEmpty) {
                  return 'The title cannot be empty';
                }
                return null;
              },
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Title',
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              maxLines: 1,
              initialValue: description,
              onChanged: onChangedDescription,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Description',
              ),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: onSavedTodo,
              child: const Text(
                "Save",
                style: TextStyle(
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      );
}
