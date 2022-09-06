import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_list/ui/screen/login_screen.dart';
import 'package:to_do_list/core/provider/todo_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = 'To Do App';

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ToDoProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'To Do App',
          theme: ThemeData(
            textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).apply(
              bodyColor: Colors.brown,
            ),
          ),
          home: const LoginScreen(),
        ),
      );
}
