import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:to_do_list/core/services/services.dart';
import 'package:to_do_list/ui/screen/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isHiddenPassword = true;

  String Materialtitle = 'Register';
  String? fontFamily = '';
  bool debugShowCheckedModeBanner = true;
  ThemeData? theme;
  Color? backgroundColor;
  double Containerwidth = 450;
  double Containerheight = 50;
  Decoration? decoration;
  double SizedBoxwidth = 10;
  double sizedBoxheight = 10;
  double ImageAssetwidth = 250;
  double ImageAssetheight = 250;
  String ImageAssetname = 'assets/images/sample_image.png';
  BorderRadiusGeometry BoxborderRadius = BorderRadius.circular(50);
  EdgeInsetsGeometry LTRBpadding = const EdgeInsets.fromLTRB(10, 2, 10, 2);
  EdgeInsetsGeometry Allpadding = const EdgeInsets.all(8.0);
  String FirstnanelabelText = 'Firstname';
  String LastnanelabelText = 'Lastname';
  String UsernanelabelText = "Username";
  String PasswordlabelText = "Password";
  double TextfontSize = 15;

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: Materialtitle,
          theme: ThemeData(
            textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).apply(bodyColor: Colors.brown),
          ),
          home: Scaffold(
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(padding: LTRBpadding),
                    Container(
                      padding: LTRBpadding,
                      decoration: BoxDecoration(borderRadius: BoxborderRadius),
                      child: Image.asset(ImageAssetname, width: ImageAssetwidth, height: ImageAssetheight),
                    ),
                    SizedBox(height: sizedBoxheight),
                    Padding(
                      padding: Allpadding,
                      child: Column(
                        children: [
                          Container(
                            padding: Allpadding,
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: FirstnanelabelText,
                                border: const OutlineInputBorder(),
                                prefixIcon: const Icon(Icons.person, color: Colors.brown),
                              ),
                              style: TextStyle(fontSize: TextfontSize),
                            ),
                          ),
                          SizedBox(height: sizedBoxheight),
                          Container(
                            padding: LTRBpadding,
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: LastnanelabelText,
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.person, color: Colors.brown),
                              ),
                              style: TextStyle(fontSize: TextfontSize),
                            ),
                          ),
                          SizedBox(height: sizedBoxheight),
                          Container(
                            padding: LTRBpadding,
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: UsernanelabelText,
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.person, color: Colors.brown),
                              ),
                              style: const TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                          SizedBox(height: sizedBoxheight),
                          Container(
                            padding: LTRBpadding,
                            decoration: BoxDecoration(
                              borderRadius: BoxborderRadius,
                            ),
                            child: TextFormField(
                              autocorrect: false,
                              obscureText: _isHiddenPassword,
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                labelText: PasswordlabelText,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                suffixIcon: InkWell(
                                    onTap: () {
                                      setState(() {
                                        _isHiddenPassword = !_isHiddenPassword;
                                      });
                                    },
                                    child: const Icon(Icons.visibility, color: Color(0xFF795548))),
                                prefixIcon: const Icon(Icons.lock, color: Colors.brown),
                              ),
                              style: TextStyle(fontSize: TextfontSize),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: sizedBoxheight),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Already have an Account?",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.7),
                            fontSize: 12,
                          ),
                        ),
                        TextButton(
                          onPressed: () async {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.brown, fontSize: TextfontSize),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: Allpadding,
                      child: Container(
                        padding: LTRBpadding,
                        height: Containerheight,
                        width: Containerwidth,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: const LinearGradient(
                            colors: [Color(0xFF795548), Color(0xFFA1887F)],
                          ),
                        ),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text(
                            "Register",
                            style: TextStyle(fontSize: TextfontSize, color: Colors.white),
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
