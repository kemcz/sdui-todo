import 'dart:convert';
import 'dart:ui';

//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:to_do_list/core/model/login_ui_model.dart';
// import 'package:to_do_list/core/model/textbutton_model.dart';
import 'package:to_do_list/core/sdui/sdui_parser.dart';
import 'package:to_do_list/core/services/api_services.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  ApiServices c = ApiServices();
  Widget loginFields = Container();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // getParseTextField();
  }
  //
  // Future<ParseTextField> getPTextField() async {
  //   String loginUIJson = await c.getJson();
  //   ParseTextField parsetextFieldJson = ParseTextField.fromJson(jsonDecode(loginUIJson));
  //   return parsetextFieldJson;
  // }
  //
  // void getParseTextField() async {
  //   ParseTextField textFieldData = await getPTextField();
  //   loginFields = await TextFieldParser(
  //     textFieldLabelText: textFieldData.data?.field?.length as String,
  //   );
  //   setState(() {});
  // }

  int valuesButtonStyle = 1;
  bool feedbackButtonStyle = false;
  String textfontWeight = 'normal';
  String alignmentButtonStyle = '';
  int durationButtonStyle = 500000;
  String bgButtonStyle = '0xFFA1887F';
  String fgButtonStyle = '0xFF795548';
  String ocButtonStyle = '0xFFFFFFFF';
  String scButtonStyle = '0xFFA1887F';
  String tsButtonStyle = '0xFFA1887F';
  String stButtonStyle = '0xFFFFFFFF';
  double elevationButtonStyle = 0;
  List<double> paddingButtonStyle = [10, 2, 10, 2];
  double sizeButtonStyle = 5;
  double maxSizeButtonStyle = 50;
  double minSizeButtonStyle = 50;

  String TxtButtonTitle = 'Test Button';
  int TxtButtonmaxLines = 1;
  int valuesTxtButton = 1;
  String TxtButtonselectionColor = '0xFFA1887F';
  String TxtButtonsemanticsLabel = '';
  bool TxtButtonsoftWrap = false;
  double TxtButtonScaleFactor = 1;
  int vTxtButtonWidthBasis = 1;
  int vTxtButtonleadingD = 1;
  String TxtButtonbgcolor = '0x00000000';
  String textButtonFontStyle = 'normal';
  String txtButtoncolor = '0xFFFFFFFF';
  String txtButtondebugLabel = 'null';
  String txtButtonfontFamily = 'Poppins';
  String txtButtonDColor = '0xFFA1887F';
  int vTextButtonDecorationStyle = 1;
  double txtButtonThickness = 0;
  bool txtButtonFallback = false;
  bool txtButtonFeatures = false;
  double txtButtonfontSize = 12;
  double txtButtonheight = 1;
  bool txtButtoninherit = true;
  double txtButtonletterSpacing = 0;
  int txtButtonoverflow = 1;
  bool txtButttonshadows = false;
  int txtButtonBaseline = 1;
  double txtButtonwordSpacing = 0;

  String textFieldLabelText = 'Username';
  int textFieldTextDirection = 1;
  String textFieldhintText = '';
  double containerSizedBox = 10;
  bool textFieldalignLabelHint = true;
  double textFieldcontentPadding = 10;
  double textFieldborderRadius = 1;
  List<double> textFieldcounter = [10, 10];
  String textFieldcounterStyle = '0xFFA1887F';
  String textFieldfontWeight = 'normal';
  String textFieldcolor = '0xFFA1887F';
  String textFielddebugLabel = '';
  String textFielddecorationColor = '0xFFA1887F';
  int valuesdecorationStyle = 1;
  double textFielddecorationThickness = 0;
  String textFieldfontFamily = 'Poppins';
  bool textFieldFallback = false;
  bool textFieldFeatures = false;
  double textFieldfontSize = 12;
  String textFieldFontStyle = 'normal';
  double textFieldheight = 10;
  bool textFieldinherit = false;
  int valuesLeadingDistribution = 1;
  double textFieldletterSpacing = 0;
  int textFieldoverflow = 1;
  bool textFieldshadows = false;
  int textFieldBaseline = 1;
  double textFieldwordSpacing = 0;

  int textFieldalignment = 0;
  int textFieldmaxLine = 1;
  bool textFieldPersonalizedLearning = false;
  bool textFieldInteractiveSelection = false;
  bool textFieldSuggestions = false;
  bool textFieldexpands = false;
  int textFieldmaxLength = 35;
  int textFieldminLines = 1;
  int textFieldmaxLengthEnforcement = 1;
  String textFieldobscuringChar = ' ';
  double textFieldscrollPadding = 20.0;
  String textFieldTextAlignVertical = 'center';
  int textFieldtextInputAction = 1;
  int textFielddragStartBehavior = 1;
  String textFieldstrutStyle = 'normal';
  int valuesstruStyleLeadingDis = 1;
  double textFieldstrutStyleleading = 1;
  double textFieldstrutStylefontSize = 12;
  double textFieldstrutStyleheight = 2;
  bool textFieldstrutheight = false;
  bool textFieldscribbleEnabled = false;
  bool textFieldreadOnly = false;
  bool textFieldshowCursor = true;
  bool textFieldenabled = true;
  bool autofocusTextField = false;
  bool obscureTextField = false;
  bool autocorrectTextField = false;
  double textFieldcursorWidth = 2;
  double textFieldcursorHeight = 30;
  int valuestextFieldclipBehavior = 1;
  int valuestextFieldkeyboardAppear = 1;
  int valuestextFieldCapitalization = 1;
  int vtextFieldBoxHeightStyle = 1;
  int vtextFieldBoxWidthStyle = 1;
  String textFieldcursorColor = '0xFFA1887F';
  double textFieldcursorRadius = 20;
  String textFieldDecoration = 'none';

  double textStylewordSpacing = 0;
  int textStyleBaseline = 1;
  bool textStyleshadows = false;
  int textStyleoverflow = 1;
  double textStyleletterSpacing = 0;
  int valuesStyleLeadingDistribution = 1;
  bool textStyleinherit = true;
  double textStyleheight = 1;
  double textStylefontSize = 15;
  bool textStyleFeatures = false;
  bool textStyleFallback = false;
  String textStaylefontFamily = 'Poppins';
  double textStyleThickness = 0;
  int valuesdecorationTextStyle = 1;
  String textStyleDColor = '0xFFA1887F';
  String textStyledebugLabel = '';
  String textStylecolor = '0xFFA1887F';
  String textStylefontWeight = 'normal';
  String bgTextStyle = '0xFFFFFFFF';
  String textStyleFontStyle = 'normal';
  bool obscureTextStyle = false;
  bool autocorrectTextStyle = true;
  bool autofocusTextStyle = true;
  String textStylecursorColor = '0xFFA1887F';
  double textStylecursorHeight = 30;
  double textStylecursorRadius = 20;
  double textStylecursorWidth = 2;
  String textStyleDecoration = 'none';

  FontWeight getFontWeight(String fontweight) {
    FontWeight _fontweight = FontWeight.normal;
    if (fontweight.toLowerCase() == 'normal') _fontweight = FontWeight.normal;
    if (fontweight.toLowerCase() == 'bold') _fontweight = FontWeight.bold;
    return _fontweight;
  }

  FontStyle getFontStyle(String fontstyle) {
    FontStyle _fontstyle = FontStyle.normal;
    if (fontstyle.toLowerCase() == 'normal') _fontstyle = FontStyle.normal;
    if (fontstyle.toLowerCase() == 'italic') _fontstyle = FontStyle.italic;
    return _fontstyle;
  }

  Alignment getAlignment(String alignment) {
    Alignment _alignment = Alignment.center;
    if (alignment.toLowerCase() == 'center') _alignment = Alignment.center;
    if (alignment.toLowerCase() == 'topCenter') _alignment = Alignment.topCenter;
    if (alignment.toLowerCase() == 'topLeft') _alignment = Alignment.topLeft;
    if (alignment.toLowerCase() == 'topRight') _alignment = Alignment.topRight;
    if (alignment.toLowerCase() == 'centerLeft') _alignment = Alignment.centerLeft;
    if (alignment.toLowerCase() == 'centerRight') _alignment = Alignment.centerRight;
    if (alignment.toLowerCase() == 'bottomcenter') _alignment = Alignment.bottomCenter;
    if (alignment.toLowerCase() == 'bottomLeft') _alignment = Alignment.bottomLeft;
    if (alignment.toLowerCase() == 'bottomRight') _alignment = Alignment.bottomRight;
    return _alignment;
  }

  TextAlignVertical gettextAlignVertical(String textAlignVertical) {
    TextAlignVertical _textAlignVertical = TextAlignVertical.center;
    if (textAlignVertical.toLowerCase() == 'center') _textAlignVertical = TextAlignVertical.center;
    if (textAlignVertical.toLowerCase() == 'bottom') _textAlignVertical = TextAlignVertical.bottom;
    if (textAlignVertical.toLowerCase() == 'top') _textAlignVertical = TextAlignVertical.top;
    return _textAlignVertical;
  }

  TextDecoration gettextDecoration(String textDecoration) {
    TextDecoration _textDecoration = TextDecoration.none;
    if (textDecoration.toLowerCase() == 'none') _textDecoration = TextDecoration.none;
    if (textDecoration.toLowerCase() == 'underline') _textDecoration = TextDecoration.underline;
    if (textDecoration.toLowerCase() == 'overline') _textDecoration = TextDecoration.overline;
    if (textDecoration.toLowerCase() == 'lineThrough') _textDecoration = TextDecoration.lineThrough;
    return _textDecoration;
  }

  @override
  Widget build(BuildContext context) {
    // print(Duration.microsecondsPerMinute);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Screen'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // TextField(
              //   controller: usernameController,
              //   keyboardType: TextInputType.emailAddress,
              //   obscureText: obscureTextField,
              //   autofocus: autofocusTextField,
              //   autocorrect: autocorrectTextField,
              //   cursorWidth: textFieldcursorWidth,
              //   cursorHeight: textFieldcursorHeight,
              //   textDirection: TextDirection.values[textFieldTextDirection],
              //   textAlign: TextAlign.values[textFieldalignment],
              //   maxLines: textFieldmaxLine,
              //   clipBehavior: Clip.values[valuestextFieldclipBehavior],
              //   enableIMEPersonalizedLearning: textFieldPersonalizedLearning,
              //   enableInteractiveSelection: textFieldInteractiveSelection,
              //   enableSuggestions: textFieldSuggestions,
              //   expands: textFieldexpands,
              //   keyboardAppearance: Brightness.values[valuestextFieldkeyboardAppear],
              //   maxLength: textFieldmaxLength,
              //   minLines: textFieldminLines,
              //   obscuringCharacter: textFieldobscuringChar,
              // focusNode: null,
              // onAppPrivateCommand: null,
              // onEditingComplete: null,
              // onSubmitted: null,
              // onTap: null,
              // onChanged: null,
              // restorationId: null,
              // scrollController: null,
              // scrollPhysics: null,
              // smartQuotesType: null,
              // smartDashesType: null,
              // inputFormatters: null,
              // buildCounter: null,
              //selectionControls: null,
              // autofillHints: null,
              // enabled: textFieldenabled,
              // readOnly: textFieldreadOnly,
              // showCursor: textFieldshowCursor,
              // scribbleEnabled: textFieldscribbleEnabled,
              // dragStartBehavior: DragStartBehavior.values[textFielddragStartBehavior],
              // textAlignVertical: gettextAlignVertical(textFieldTextAlignVertical),
              // textCapitalization: TextCapitalization.values[valuestextFieldCapitalization],
              // textInputAction: TextInputAction.values[textFieldtextInputAction],
              // toolbarOptions: ToolbarOptions(copy: false),
              // selectionHeightStyle: BoxHeightStyle.values[vtextFieldBoxHeightStyle],
              // selectionWidthStyle: BoxWidthStyle.values[vtextFieldBoxWidthStyle],
              // scrollPadding: EdgeInsets.all(textFieldscrollPadding),
              // maxLengthEnforcement: MaxLengthEnforcement.values[textFieldmaxLengthEnforcement],
              // mouseCursor: MaterialStateMouseCursor.textable,
              // cursorRadius: Radius.circular(textFieldcursorRadius),
              // cursorColor: Color(int.parse(textFieldcursorColor)),
              // strutStyle: StrutStyle(
              //   package: "",
              //   leading: textFieldstrutStyleleading,
              //   fontSize: textFieldstrutStylefontSize,
              //   height: textFieldstrutStyleheight,
              //   fontFamily: textFieldfontFamily,
              //   forceStrutHeight: textFieldstrutheight,
              //   fontStyle: getFontStyle(textFieldstrutStyle),
              //   fontFamilyFallback: List.empty(growable: textFieldFallback),
              //   leadingDistribution: TextLeadingDistribution.values[valuesstruStyleLeadingDis],
              // ),
              // decoration: InputDecoration(
              //   labelText: textFieldLabelText,
              //   hintText: textFieldhintText,
              //   alignLabelWithHint: textFieldalignLabelHint,
              //   contentPadding: EdgeInsets.all(textFieldcontentPadding),
              //   border: OutlineInputBorder(
              //     borderRadius: BorderRadius.circular(textFieldborderRadius),
              //     //   borderSide: BorderSide.none,
              //     //  gapPadding: double.infinity,
              //   ),
              //   constraints: const BoxConstraints(
              //     maxHeight: double.infinity,
              //     minWidth: double.infinity,
              //   ),
              //   counter: Center(
              //     widthFactor: textFieldcounter[0],
              //     heightFactor: textFieldcounter[1],
              //   ),
              //   counterStyle: TextStyle(
              //     backgroundColor: (Color(int.parse(textFieldcounterStyle))),
              //     fontWeight: getFontWeight(textFieldfontWeight),
              //     color: Color(int.parse(textFieldcolor)),
              //     debugLabel: textFielddebugLabel,
              //     decoration: gettextDecoration(textFieldDecoration),
              //     decorationColor: Color(int.parse(textFielddecorationColor)),
              //     decorationStyle: TextDecorationStyle.values[valuesdecorationStyle],
              //     decorationThickness: textFielddecorationThickness,
              //     fontFamily: textFieldfontFamily,
              //     fontFamilyFallback: List.empty(growable: textFieldFallback),
              //     fontFeatures: List.empty(growable: textFieldFeatures),
              //     fontSize: textFieldfontSize,
              //     fontStyle: getFontStyle(textFieldFontStyle),
              //     height: textFieldheight,
              //     inherit: textFieldinherit,
              //     leadingDistribution: TextLeadingDistribution.values[valuesLeadingDistribution],
              //     letterSpacing: textFieldletterSpacing,
              //     overflow: TextOverflow.values[textFieldoverflow],
              //     shadows: List.empty(growable: textFieldshadows),
              //     textBaseline: TextBaseline.values[textFieldBaseline],
              //     wordSpacing: textFieldwordSpacing,
              //     package: "",
              //     //foreground: null,
              //     // background: null,
              //     // locale: null,
              //     // fontVariations: <FontVariation>[FontVariation('wght', 900.0)],
              //   ),
              // ),
              // style: TextStyle(
              //   wordSpacing: textStylewordSpacing,
              //   textBaseline: TextBaseline.values[textStyleBaseline],
              //   shadows: List.empty(growable: textStyleshadows),
              //   package: "",
              //   overflow: TextOverflow.values[textStyleoverflow],
              //   letterSpacing: textStyleletterSpacing,
              //   leadingDistribution: TextLeadingDistribution.values[valuesStyleLeadingDistribution],
              //   inherit: textStyleinherit,
              //   height: textStyleheight,
              //   fontSize: textStylefontSize,
              //   fontFeatures: List.empty(growable: textStyleFeatures),
              //   fontFamilyFallback: List.empty(growable: textStyleFallback),
              //   fontFamily: textStaylefontFamily,
              //   decorationThickness: textStyleThickness,
              //   decorationStyle: TextDecorationStyle.values[valuesdecorationTextStyle],
              //   decorationColor: Color(int.parse(textStyleDColor)),
              //   decoration: gettextDecoration(textStyleDecoration),
              //   debugLabel: textStyledebugLabel,
              //   color: Color(int.parse(textStylecolor)),
              //   fontWeight: getFontWeight(textStylefontWeight),
              //   backgroundColor: Color(int.parse(bgTextStyle)),
              //   fontStyle: getFontStyle(textStyleFontStyle),
              //foreground: null,
              //locale: null,
              //background: null,
              //fontVariations: [FontVariation('wght', 900.0)],
              //   ),
              // ),
              // SizedBox(height: containerSizedBox),
              loginFields,
              TextButton(
                clipBehavior: Clip.none,
                autofocus: false,
                focusNode: null,
                statesController: null,
                onFocusChange: null,
                onLongPress: null,
                onHover: null,
                style: ButtonStyle(
                  alignment: getAlignment(alignmentButtonStyle),
                  animationDuration: Duration(microseconds: durationButtonStyle),
                  backgroundColor: MaterialStatePropertyAll(Color(int.parse(bgButtonStyle))),
                  elevation: MaterialStatePropertyAll(elevationButtonStyle),
                  padding: MaterialStatePropertyAll(
                    EdgeInsets.fromLTRB(
                      paddingButtonStyle[0],
                      paddingButtonStyle[1],
                      paddingButtonStyle[2],
                      paddingButtonStyle[3],
                    ),
                  ),
                  fixedSize: MaterialStatePropertyAll(Size.fromHeight(sizeButtonStyle)),
                  foregroundColor: MaterialStatePropertyAll(Color(int.parse(fgButtonStyle))),
                  maximumSize: MaterialStatePropertyAll(Size.fromHeight(maxSizeButtonStyle)),
                  minimumSize: MaterialStatePropertyAll(Size.fromHeight(minSizeButtonStyle)),
                  mouseCursor: MaterialStateMouseCursor.clickable,
                  // overlayColor: MaterialStatePropertyAll(Color(int.parse(ocButtonStyle))),
                  shadowColor: MaterialStatePropertyAll(Color(int.parse(scButtonStyle))),
                  side: const MaterialStatePropertyAll(BorderSide.none),
                  textStyle: MaterialStatePropertyAll(TextStyle(backgroundColor: Color(int.parse(tsButtonStyle)))),
                  visualDensity: const VisualDensity(vertical: 2, horizontal: 2),
                  enableFeedback: false,
                  splashFactory: NoSplash.splashFactory,
                  surfaceTintColor: MaterialStatePropertyAll(Color(int.parse(stButtonStyle))),
                  tapTargetSize: MaterialTapTargetSize.values[valuesButtonStyle],
                  // shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
                onPressed: () {},
                child: Text(
                  TxtButtonTitle,
                  locale: null,
                  textAlign: TextAlign.center,
                  maxLines: TxtButtonmaxLines,
                  overflow: TextOverflow.values[valuesTxtButton],
                  selectionColor: Color(int.parse(TxtButtonselectionColor)),
                  semanticsLabel: TxtButtonsemanticsLabel,
                  softWrap: TxtButtonsoftWrap,
                  // strutStyle: StrutStyle.disabled,
                  // textDirection: null,
                  textHeightBehavior: TextHeightBehavior(
                    leadingDistribution: TextLeadingDistribution.even,
                  ),
                  textScaleFactor: TxtButtonScaleFactor,
                  textWidthBasis: TextWidthBasis.values[vTxtButtonWidthBasis],
                  style: TextStyle(
                    fontWeight: getFontWeight(textfontWeight),
                    leadingDistribution: TextLeadingDistribution.values[vTxtButtonleadingD],
                    backgroundColor: Color(int.parse(TxtButtonbgcolor)),
                    foreground: null,
                    fontStyle: getFontStyle(textButtonFontStyle),
                    color: Color(int.parse(txtButtoncolor)),
                    debugLabel: txtButtondebugLabel,
                    fontFamily: txtButtonfontFamily,
                    background: null,
                    decoration: TextDecoration.none,
                    decorationColor: Color(int.parse(txtButtonDColor)),
                    decorationStyle: TextDecorationStyle.values[vTextButtonDecorationStyle],
                    decorationThickness: txtButtonThickness,
                    fontFamilyFallback: List.empty(growable: txtButtonFallback),
                    fontFeatures: List.empty(growable: txtButtonFeatures),
                    fontSize: txtButtonfontSize,
                    // fontVariations: [FontVariation('wght', 900.0)],
                    height: txtButtonheight,
                    inherit: txtButtoninherit,
                    letterSpacing: txtButtonletterSpacing,
                    locale: null,
                    overflow: TextOverflow.values[txtButtonoverflow],
                    shadows: List.empty(growable: txtButttonshadows),
                    textBaseline: TextBaseline.values[txtButtonBaseline],
                    wordSpacing: txtButtonwordSpacing,
                    package: null,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
