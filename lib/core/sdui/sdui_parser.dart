import 'package:flutter/material.dart';
import 'package:to_do_list/ui/screen/task_screen.dart';
import 'package:to_do_list/core/model/login_ui_model.dart';

Color hexToColor(String code) {
  return Color(
    int.parse(code.substring(1, 7), radix: 16) + 0xFF3E2723,
  );
}

Widget parseUIToJson(Map<String, dynamic> response) {
  LoginUI loginUI = LoginUI.fromJson(response);
  List<Widget> populatedWidget = <Widget>[];
  int len = loginUI.data!.field!.length;
  for (int i = 0; i < len; i++) {
    String color = loginUI.data?.field![i].design?.hexColor as String;
    populatedWidget.add(
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
          decoration: BoxDecoration(
              borderRadius: loginUI.data?.field![i].widgetType == 'textField' ? BorderRadius.circular(20) : BorderRadius.circular(20),
              border: loginUI.data?.field![i].widgetType == 'textField'
                  ? Border.all(
                      color: hexToColor('#$color'),
                    )
                  : null),
          child: loginUI.data?.field![i].widgetType == 'textField'
              ? parseUsernameTextField(
                  isEnabled: loginUI.data?.field![i].isEnabled as bool,
                  label: loginUI.data?.field![i].fieldName as String,
                )
              : loginUI.data?.field![i].widgetType == 'TextButton'
                  ? parseRegisterButton(
                      isEnabled: loginUI.data?.field![i].isEnabled as bool,
                      label: loginUI.data?.field![i].fieldName as String,
                    )
                  : loginUI.data?.field![i].widgetType == 'MaterialButton'
                      ? parseButton(
                          isEnabled: loginUI.data?.field![i].isEnabled as bool,
                          label: loginUI.data?.field![i].fieldName as String,
                        )
                      : parseDropDownButton(),
        ),
      ),
    );
  }
  return Column(
    children: populatedWidget,
  );
}

Widget parseUsernameTextField({required bool isEnabled, required String label}) {
  return TextField(
    enabled: isEnabled,
    decoration: InputDecoration(
      border: InputBorder.none,
      labelText: label,
    ),
  );
}

Widget parsePasswordTextField({required bool isEnabled, required String label}) {
  return TextField(
    enabled: isEnabled,
    decoration: InputDecoration(
      border: InputBorder.none,
      labelText: label,
    ),
  );
}

Widget parseRegisterButton({required bool isEnabled, required String label}) {
  return TextButton(
    onPressed: () {},
    child: Text(label),
  );
}

Widget parseButton({required bool isEnabled, required String label}) {
  return NewButton(label: label);
}

class NewButton extends StatelessWidget {
  final String label;
  const NewButton({
    Key? key,
    required this.label,
  }) : super(key: key);

  // TextEditingController usernameController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();
  // final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          // var user = Provider.of<UserProvider>(context, listen: false);
          // if (formKey.currentState!.validate()) {}
          // if (usernameController.text == "admin" &&
          //     passwordController.text == "password") {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const TaskScreen()));
          // }
        },
        child: Text(label));
  }
}

Widget parseDropDownButton() {
  return Container();
}
//
// Widget parseRegUIToJson(Map<String, dynamic> response) {
//   RegisterUI registerUI = RegisterUI.fromJson(response);
//   List<Widget> populatedWidget = <Widget>[];
//   int len = registerUI.data!.field!.length;
//   for (int i = 0; i < len; i++) {
//     String color = registerUI.data?.field![i].design?.hexColor as String;
//     populatedWidget.add(
//       Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Container(
//           padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
//           decoration: BoxDecoration(
//               borderRadius: registerUI.data?.field![i].widgetType == 'textField' ? BorderRadius.circular(20) : BorderRadius.circular(20),
//               border: registerUI.data?.field![i].widgetType == 'textField'
//                   ? Border.all(
//                 color: hexToColor('#$color'),
//               )
//                   : null),
//           child: loginUI.data?.field![i].widgetType == 'textField'
//               ? parseUsernameTextField(
//             isEnabled: loginUI.data?.field![i].isEnabled as bool,
//             label: loginUI.data?.field![i].fieldName as String,
//           )
//               : loginUI.data?.field![i].widgetType == 'TextButton'
//               ? parseRegisterButton(
//             isEnabled: loginUI.data?.field![i].isEnabled as bool,
//             label: loginUI.data?.field![i].fieldName as String,
//           )
//               : registerUI.data?.field![i].widgetType == 'MaterialButton'
//               ? parseButton(
//             isEnabled: registerUI.data?.field![i].isEnabled as bool,
//             label: registerUI.data?.field![i].fieldName as String,
//           )
//               : parseDropDownButton(),
//         ),
//       ),
//     );
//   }
//   return Column(
//     children: populatedWidget,
//   );
// }
