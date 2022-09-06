import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_list/ui/screen/register_screen.dart';
import 'package:to_do_list/ui/screen/task_screen.dart';
import 'package:to_do_list/core/sdui/sdui_parser.dart';
import 'package:to_do_list/core/services/services.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isHiddenPassword = true;
  // static Widget populatedFields = Container();
  //
  // Future fields() async {
  //   ServicesUI servicesUI = ServicesUI();
  //   ResponseModel response = await servicesUI.servicesUI();
  //
  //   setState(() {
  //     populatedFields = parseUIToJson(response.result);
  //   });
  // }
  //
  // @override
  // void initState() {
  //   fields();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Login',
          theme: ThemeData(
            textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).apply(
              bodyColor: Colors.brown,
            ),
          ),
          home: Scaffold(
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Image.asset(
                        'assets/images/sample_image.png',
                        width: 250,
                        height: 250,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                labelText: "Username",
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.brown,
                                ),
                              ),
                              style: const TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: TextFormField(
                              autocorrect: false,
                              obscureText: _isHiddenPassword,
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                labelText: "Password",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                suffixIcon: InkWell(
                                  onTap: () {
                                    setState(() {
                                      _isHiddenPassword = !_isHiddenPassword;
                                    });
                                  },
                                  child: const Icon(
                                    Icons.visibility,
                                    color: Color(0xFF77202f),
                                  ),
                                ),
                                prefixIcon: const Icon(
                                  Icons.lock,
                                  color: Colors.brown,
                                ),
                              ),
                              style: const TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () async {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterScreen()));
                          },
                          child: const Text(
                            "Register Account",
                            style: TextStyle(
                              color: Colors.brown,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forget Password?",
                            style: TextStyle(
                              color: Colors.brown,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                        height: 50,
                        width: 450,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: const LinearGradient(
                            colors: [Color(0xFF795548), Color(0xFFA1887F)],
                          ),
                        ),
                        child: MaterialButton(
                          onPressed: () async {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const TaskScreen()));
                          },
                          child: const Text(
                            "LOGIN",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),

                    // populatedFields
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
