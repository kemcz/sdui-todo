import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_list/ui/screen/task_screen.dart';
import 'package:to_do_list/ui/screen/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isHiddenPassword = true;

  String Materialtitle = 'Login';
  String? fontFamily = '';
  bool DebugBanner = false;
  ThemeData? theme;
  Color? backgroundColor;
  double Containerwidth = 450;
  double Containerheight = 50;
  Decoration? decoration;
  double SizedBoxwidth = 10;
  double sizedBoxheight = 10;
  double ImageAssetwidth = 250;
  double ImageAssetheight = 250;
  double TextfontSize = 15;
  double Text1fontSize = 12;
  Color Textcolor = Colors.brown;
  Color Iconcolor = const Color(0xFF795548);
  Color LinearGradient1 = const Color(0xFF795548);
  Color LinearGradient2 = const Color(0xFFA1887F);
  IconData Usericon = Icons.person;
  IconData Passwordicon = Icons.lock;
  IconData Visibilityicon = Icons.visibility;
  String ImageAssetname = 'assets/images/sample_image.png';
  String FirstnamelabelText = 'Firstname';
  String LastnamelabelText = 'Lastname';
  String UsernamelabelText = "Username";
  String PasswordlabelText = "Password";
  String Text1data = "Forget Password?";
  String Text2data = "Register Account";
  String TextButtondata = "Login";
  double BoxborderRadius = 50;
  List LTRBpadding = [10, 2, 10, 2];
  double Allpadding = 8.0;

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: DebugBanner,
          title: Materialtitle,
          theme: ThemeData(
            textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).apply(bodyColor: Colors.brown),
          ),
          home: Scaffold(
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(LTRBpadding[0], LTRBpadding[1], LTRBpadding[2], LTRBpadding[3])),
                    Container(
                      padding: EdgeInsets.fromLTRB(LTRBpadding[0], LTRBpadding[1], LTRBpadding[2], LTRBpadding[3]),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(BoxborderRadius),
                      ),
                      child: Image.asset(ImageAssetname, width: ImageAssetwidth, height: ImageAssetheight),
                    ),
                    SizedBox(height: sizedBoxheight),
                    Padding(
                      padding: EdgeInsets.all(Allpadding),
                      child: Column(
                        children: [
                          Container(
                              padding: EdgeInsets.fromLTRB(LTRBpadding[0], LTRBpadding[1], LTRBpadding[2], LTRBpadding[3]),
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  labelText: UsernamelabelText,
                                  border: const OutlineInputBorder(),
                                  prefixIcon: Icon(Usericon, color: Iconcolor),
                                ),
                                style: TextStyle(fontSize: TextfontSize),
                              )),
                          SizedBox(height: sizedBoxheight),
                          Container(
                              padding: EdgeInsets.fromLTRB(LTRBpadding[0], LTRBpadding[1], LTRBpadding[2], LTRBpadding[3]),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(BoxborderRadius)),
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
                                        child: Icon(Visibilityicon, color: Iconcolor)),
                                    prefixIcon: Icon(Passwordicon, color: Iconcolor)),
                                style: TextStyle(fontSize: TextfontSize),
                              )),
                        ],
                      ),
                    ),
                    SizedBox(height: sizedBoxheight),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () async {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterScreen()));
                          },
                          child: Text(
                            Text2data,
                            style: TextStyle(color: Colors.brown, fontSize: Text1fontSize),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            Text1data,
                            style: TextStyle(color: Textcolor, fontSize: Text1fontSize),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(Allpadding),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(LTRBpadding[0], LTRBpadding[1], LTRBpadding[2], LTRBpadding[3]),
                        height: Containerheight,
                        width: Containerwidth,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(BoxborderRadius),
                          gradient: LinearGradient(colors: [LinearGradient1, LinearGradient2]),
                        ),
                        child: MaterialButton(
                          onPressed: () async {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const TaskScreen()));
                          },
                          child: Text(
                            TextButtondata,
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
