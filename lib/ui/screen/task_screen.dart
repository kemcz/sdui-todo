import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list/ui/widgets/add_todo.dart';
import 'package:to_do_list/ui/widgets/list_todo.dart';
import 'package:to_do_list/ui/widgets/completed_list.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final tabs = [const ToDoList(), const CompletedList()];

    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'To Do App',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.brown,
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 05.0),
                child: IconButton(
                  icon: const Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
            leading: IconButton(
              icon: const Icon(
                Icons.add,
                color: Colors.white,
              ),
              onPressed: () => showDialog(context: context, builder: (context) => const AddTodoWidget()),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.brown,
            unselectedItemColor: Colors.white.withOpacity(0.5),
            selectedItemColor: Colors.white,
            currentIndex: selectedIndex,
            onTap: (index) => setState(
              () {
                selectedIndex = index;
              },
            ),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.fact_check_outlined,
                  size: 28,
                ),
                label: 'Todo\'s',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.done,
                  size: 28,
                  color: Colors.white,
                ),
                label: 'Completed',
              ),
            ],
          ),
          body: tabs[selectedIndex],
        );
      },
    );
  }
}
