import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
  Color Iconcolor = Color(0xFF795548);
  Color LinearGradient1 = Color(0xFF795548);
  Color LinearGradient2 = Color(0xFFA1887F);
  IconData Usericon = Icons.person;
  IconData Passwordicon = Icons.lock;
  IconData Visibilityicon = Icons.visibility;
  String ImageAssetname = 'assets/images/sample_image.png';
  String FirstnamelabelText = 'Firstname';
  String LastnamelabelText = 'Lastname';
  String UsernamelabelText = "Username";
  String PasswordlabelText = "Password";
  String Textdata = "Already have an Account?";
  String TextButtondata = "Login";
  String MaterialTextButtondata = "Register";
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
                    Padding(
                      padding: EdgeInsets.fromLTRB(LTRBpadding[0], LTRBpadding[1], LTRBpadding[2], LTRBpadding[3]),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(LTRBpadding[0], LTRBpadding[1], LTRBpadding[2], LTRBpadding[3]),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(BoxborderRadius)),
                      child: Image.asset(ImageAssetname, width: ImageAssetwidth, height: ImageAssetheight),
                    ),
                    SizedBox(height: sizedBoxheight),
                    Padding(
                      padding: EdgeInsets.all(Allpadding),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(Allpadding),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: FirstnamelabelText,
                                border: const OutlineInputBorder(),
                                prefixIcon: Icon(Usericon, color: Textcolor),
                              ),
                              style: TextStyle(fontSize: TextfontSize),
                            ),
                          ),
                          SizedBox(height: sizedBoxheight),
                          Container(
                            padding: EdgeInsets.fromLTRB(LTRBpadding[0], LTRBpadding[1], LTRBpadding[2], LTRBpadding[3]),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: LastnamelabelText,
                                border: const OutlineInputBorder(),
                                prefixIcon: Icon(Usericon, color: Textcolor),
                              ),
                              style: TextStyle(fontSize: TextfontSize),
                            ),
                          ),
                          SizedBox(height: sizedBoxheight),
                          Container(
                            padding: EdgeInsets.fromLTRB(LTRBpadding[0], LTRBpadding[1], LTRBpadding[2], LTRBpadding[3]),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: UsernamelabelText,
                                border: const OutlineInputBorder(),
                                prefixIcon: Icon(Usericon, color: Textcolor),
                              ),
                              style: TextStyle(fontSize: TextfontSize),
                            ),
                          ),
                          SizedBox(height: sizedBoxheight),
                          Container(
                            padding: EdgeInsets.fromLTRB(LTRBpadding[0], LTRBpadding[1], LTRBpadding[2], LTRBpadding[3]),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(BoxborderRadius),
                            ),
                            child: TextFormField(
                              autocorrect: false,
                              obscureText: _isHiddenPassword,
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                labelText: PasswordlabelText,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(BoxborderRadius),
                                ),
                                suffixIcon: InkWell(
                                    onTap: () {
                                      setState(() {
                                        _isHiddenPassword = !_isHiddenPassword;
                                      });
                                    },
                                    child: Icon(Visibilityicon, color: Iconcolor)),
                                prefixIcon: Icon(Passwordicon, color: Iconcolor),
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
                          Textdata,
                          style: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: Text1fontSize),
                        ),
                        TextButton(
                          onPressed: () async {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                          },
                          child: Text(
                            TextButtondata,
                            style: TextStyle(color: Textcolor, fontSize: TextfontSize),
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
                          gradient: LinearGradient(
                            colors: [LinearGradient1, LinearGradient2],
                          ),
                        ),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text(
                            MaterialTextButtondata,
                            style: TextStyle(fontSize: TextfontSize, color: Textcolor),
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
