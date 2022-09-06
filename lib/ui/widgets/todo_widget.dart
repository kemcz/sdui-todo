import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/core/utils/utils.dart';
import 'package:to_do_list/core/provider/todo.dart';
import 'package:to_do_list/ui/screen/edit_page.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:to_do_list/core/provider/todo_provider.dart';

class ToDoWidget extends StatelessWidget {
  final Todo todo;

  const ToDoWidget({
    Key? key,
    required this.todo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Slidable(
          startActionPane: ActionPane(
            motion: const ScrollMotion(),
            children: [
              SlidableAction(
                onPressed: (_) {},
                // onPressed: (context) => EditToDo(context, todo),
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                icon: Icons.edit,
                label: 'Edit',
              ),
            ],
          ),
          endActionPane: ActionPane(
            motion: const ScrollMotion(),
            children: [
              SlidableAction(
                onPressed: (context) => deleteToDo(context, todo),
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                icon: Icons.delete,
                label: 'Delete',
              ),
            ],
          ),
          child: GestureDetector(
            onTap: () => EditToDo(todo: todo),
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Checkbox(
                    activeColor: Colors.brown,
                    value: todo.isDone,
                    onChanged: (_) {
                      final provider = Provider.of<ToDoProvider>(context, listen: false);
                      final isDone = provider.ToggleToDoStatus(todo);
                      // Utils.showSnackBar(
                      //   context,
                      //   isDone ? "Todos Completed" : "Todos mark incomplete",
                      // );
                    },
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          todo.title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                            fontSize: 20,
                          ),
                        ),
                        if (todo.description.isNotEmpty)
                          Container(
                            margin: const EdgeInsets.only(top: 5),
                            child: Text(
                              todo.description,
                              style: const TextStyle(
                                fontSize: 15,
                                height: 1.5,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  void deleteToDo(BuildContext context, Todo todo) {
    // final provider = Provider.of<ToDoProvider>(context, listen: false);
    // provider.RemoveToDo(todo);
    // Navigator.of(context).pop();
    // Utils.showSnackBar(context, "Delete To-do");
  }

  void editTodo(BuildContext context, Todo todo) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => EditToDo(todo: todo),
        ),
      );
}
