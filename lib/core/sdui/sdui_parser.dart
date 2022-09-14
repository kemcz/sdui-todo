import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

List<double> paddingButtonStyle = [10, 2, 10, 2];

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

Future<Widget> TextButtonParser({
  int valuesTxtButtonStyle = 1,
  bool fbTxtButtonStyle = false,
  String TxtButtonfontWeight = 'normal',
  String alignmentTxtButtonStyle = '',
  int durationTxtButtonStyle = 500000,
  String bgTxtButtonStyle = '0xFFA1887F',
  String fgTxtButtonStyle = '0xFF795548',
  String ocTxtButtonStyle = '0xFFFFFFFF',
  String scTxtButtonStyle = '0xFFA1887F',
  String tsTxtButtonStyle = '0xFFA1887F',
  String stTxtButtonStyle = '0xFFFFFFFF',
  double elevationTxtButtonStyle = 0,
  double sizeTxtButtonStyle = 5,
  double maxSizeTxtButtonStyle = 50,
  double minSizeTxtButtonStyle = 50,
}) async {
  return TextButton(
      style: ButtonStyle(
        alignment: getAlignment(alignmentTxtButtonStyle),
        animationDuration: Duration(microseconds: durationTxtButtonStyle),
        backgroundColor: MaterialStatePropertyAll(Color(int.parse(bgTxtButtonStyle))),
        elevation: MaterialStatePropertyAll(elevationTxtButtonStyle),
        padding: MaterialStatePropertyAll(
          EdgeInsets.fromLTRB(
            paddingButtonStyle[0],
            paddingButtonStyle[1],
            paddingButtonStyle[2],
            paddingButtonStyle[3],
          ),
        ),
        fixedSize: MaterialStatePropertyAll(Size.fromHeight(sizeTxtButtonStyle)),
        foregroundColor: MaterialStatePropertyAll(Color(int.parse(fgTxtButtonStyle))),
        maximumSize: MaterialStatePropertyAll(Size.fromHeight(maxSizeTxtButtonStyle)),
        minimumSize: MaterialStatePropertyAll(Size.fromHeight(minSizeTxtButtonStyle)),
        mouseCursor: MaterialStateMouseCursor.clickable,
        // overlayColor: MaterialStatePropertyAll(Color(int.parse(ocButtonStyle))),
        shadowColor: MaterialStatePropertyAll(Color(int.parse(scTxtButtonStyle))),
        side: const MaterialStatePropertyAll(BorderSide.none),
        textStyle: MaterialStatePropertyAll(TextStyle(backgroundColor: Color(int.parse(tsTxtButtonStyle)))),
        visualDensity: const VisualDensity(vertical: 2, horizontal: 2),
        enableFeedback: false,
        splashFactory: NoSplash.splashFactory,
        surfaceTintColor: MaterialStatePropertyAll(Color(int.parse(stTxtButtonStyle))),
        tapTargetSize: MaterialTapTargetSize.values[valuesTxtButtonStyle],
        // shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
      ),
      onPressed: () {},
      child: Text('Test Button'));
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

List<double> textFieldcounter = [10, 10];
TextEditingController usernameController = TextEditingController();
Future<Widget> TextFieldParser({
  String textFieldLabelText = 'Username',
  int textFieldTextDirection = 1,
  String textFieldhintText = '',
  double containerSizedBox = 10,
  bool textFieldalignLabelHint = true,
  double textFieldcontentPadding = 10,
  double textFieldborderRadius = 1,
  String textFieldcounterStyle = '0xFFA1887F',
  String textFieldfontWeight = 'normal',
  String textFieldcolor = '0xFFA1887F',
  String textFielddebugLabel = '',
  String textFielddecorationColor = '0xFFA1887F',
  int valuesdecorationStyle = 1,
  double textFielddecorationThickness = 0,
  String textFieldfontFamily = 'Poppins',
  bool textFieldFallback = false,
  bool textFieldFeatures = false,
  double textFieldfontSize = 12,
  String textFieldFontStyle = 'normal',
  double textFieldheight = 10,
  bool textFieldinherit = false,
  int valuesLeadingDistribution = 1,
  double textFieldletterSpacing = 0,
  int textFieldoverflow = 1,
  bool textFieldshadows = false,
  int textFieldBaseline = 1,
  double textFieldwordSpacing = 0,
  int textFieldalignment = 0,
  int textFieldmaxLine = 1,
  bool textFieldPersonalizedLearning = false,
  bool textFieldInteractiveSelection = false,
  bool textFieldSuggestions = false,
  bool textFieldexpands = false,
  int textFieldmaxLength = 35,
  int textFieldminLines = 1,
  int textFieldmaxLengthEnforcement = 1,
  String textFieldobscuringChar = ' ',
  double textFieldscrollPadding = 20.0,
  String textFieldTextAlignVertical = 'center',
  int textFieldtextInputAction = 1,
  int textFielddragStartBehavior = 1,
  String textFieldstrutStyle = 'normal',
  int valuesstruStyleLeadingDis = 1,
  double textFieldstrutStyleleading = 1,
  double textFieldstrutStylefontSize = 12,
  double textFieldstrutStyleheight = 2,
  bool textFieldstrutheight = false,
  bool textFieldscribbleEnabled = false,
  bool textFieldreadOnly = false,
  bool textFieldshowCursor = true,
  bool textFieldenabled = true,
  bool autofocusTextField = false,
  bool obscureTextField = false,
  bool autocorrectTextField = false,
  double textFieldcursorWidth = 2,
  double textFieldcursorHeight = 30,
  int valuestextFieldclipBehavior = 1,
  int valuestextFieldkeyboardAppear = 1,
  int valuestextFieldCapitalization = 1,
  int vtextFieldBoxHeightStyle = 1,
  int vtextFieldBoxWidthStyle = 1,
  String textFieldcursorColor = '0xFFA1887F',
  double textFieldcursorRadius = 20,
  String textFieldDecoration = 'none',
  double textStylewordSpacing = 0,
  int textStyleBaseline = 1,
  bool textStyleshadows = false,
  int textStyleoverflow = 1,
  double textStyleletterSpacing = 0,
  int valuesStyleLeadingDistribution = 1,
  bool textStyleinherit = true,
  double textStyleheight = 1,
  double textStylefontSize = 15,
  bool textStyleFeatures = false,
  bool textStyleFallback = false,
  String textStaylefontFamily = 'Poppins',
  double textStyleThickness = 0,
  int valuesdecorationTextStyle = 1,
  String textStyleDColor = '0xFFA1887F',
  String textStyledebugLabel = '',
  String textStylecolor = '0xFFA1887F',
  String textStylefontWeight = 'normal',
  String bgTextStyle = '0xFFFFFFFF',
  String textStyleFontStyle = 'normal',
  bool obscureTextStyle = false,
  bool autocorrectTextStyle = true,
  bool autofocusTextStyle = true,
  String textStylecursorColor = '0xFFA1887F',
  double textStylecursorHeight = 30,
  double textStylecursorRadius = 20,
  double textStylecursorWidth = 2,
  String textStyleDecoration = 'none',
}) async {
  return TextField(
    controller: usernameController,
    keyboardType: TextInputType.emailAddress,
    obscureText: obscureTextField,
    autofocus: autofocusTextField,
    autocorrect: autocorrectTextField,
    cursorWidth: textFieldcursorWidth,
    cursorHeight: textFieldcursorHeight,
    textDirection: TextDirection.values[textFieldTextDirection],
    textAlign: TextAlign.values[textFieldalignment],
    maxLines: textFieldmaxLine,
    clipBehavior: Clip.values[valuestextFieldclipBehavior],
    enableIMEPersonalizedLearning: textFieldPersonalizedLearning,
    enableInteractiveSelection: textFieldInteractiveSelection,
    enableSuggestions: textFieldSuggestions,
    expands: textFieldexpands,
    keyboardAppearance: Brightness.values[valuestextFieldkeyboardAppear],
    maxLength: textFieldmaxLength,
    minLines: textFieldminLines,
    obscuringCharacter: textFieldobscuringChar,
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
    // selectionControls: null,
    // autofillHints: null,
    enabled: textFieldenabled,
    readOnly: textFieldreadOnly,
    showCursor: textFieldshowCursor,
    scribbleEnabled: textFieldscribbleEnabled,
    dragStartBehavior: DragStartBehavior.values[textFielddragStartBehavior],
    textAlignVertical: gettextAlignVertical(textFieldTextAlignVertical),
    textCapitalization: TextCapitalization.values[valuestextFieldCapitalization],
    textInputAction: TextInputAction.values[textFieldtextInputAction],
    toolbarOptions: ToolbarOptions(copy: false),
    selectionHeightStyle: BoxHeightStyle.values[vtextFieldBoxHeightStyle],
    selectionWidthStyle: BoxWidthStyle.values[vtextFieldBoxWidthStyle],
    scrollPadding: EdgeInsets.all(textFieldscrollPadding),
    maxLengthEnforcement: MaxLengthEnforcement.values[textFieldmaxLengthEnforcement],
    mouseCursor: MaterialStateMouseCursor.textable,
    cursorRadius: Radius.circular(textFieldcursorRadius),
    cursorColor: Color(int.parse(textFieldcursorColor)),
    strutStyle: StrutStyle(
      package: "",
      leading: textFieldstrutStyleleading,
      fontSize: textFieldstrutStylefontSize,
      height: textFieldstrutStyleheight,
      fontFamily: textFieldfontFamily,
      forceStrutHeight: textFieldstrutheight,
      fontStyle: getFontStyle(textFieldstrutStyle),
      fontFamilyFallback: List.empty(growable: textFieldFallback),
      leadingDistribution: TextLeadingDistribution.values[valuesstruStyleLeadingDis],
    ),
    decoration: InputDecoration(
      labelText: textFieldLabelText,
      hintText: textFieldhintText,
      alignLabelWithHint: textFieldalignLabelHint,
      contentPadding: EdgeInsets.all(textFieldcontentPadding),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(textFieldborderRadius),
        //   borderSide: BorderSide.none,
        //  gapPadding: double.infinity,
      ),
      constraints: const BoxConstraints(
        maxHeight: double.infinity,
        minWidth: double.infinity,
      ),
      counter: Center(
        widthFactor: textFieldcounter[0],
        heightFactor: textFieldcounter[1],
      ),
      counterStyle: TextStyle(
        backgroundColor: (Color(int.parse(textFieldcounterStyle))),
        fontWeight: getFontWeight(textFieldfontWeight),
        color: Color(int.parse(textFieldcolor)),
        debugLabel: textFielddebugLabel,
        decoration: gettextDecoration(textFieldDecoration),
        decorationColor: Color(int.parse(textFielddecorationColor)),
        decorationStyle: TextDecorationStyle.values[valuesdecorationStyle],
        decorationThickness: textFielddecorationThickness,
        fontFamily: textFieldfontFamily,
        fontFamilyFallback: List.empty(growable: textFieldFallback),
        fontFeatures: List.empty(growable: textFieldFeatures),
        fontSize: textFieldfontSize,
        fontStyle: getFontStyle(textFieldFontStyle),
        height: textFieldheight,
        inherit: textFieldinherit,
        leadingDistribution: TextLeadingDistribution.values[valuesLeadingDistribution],
        letterSpacing: textFieldletterSpacing,
        overflow: TextOverflow.values[textFieldoverflow],
        shadows: List.empty(growable: textFieldshadows),
        textBaseline: TextBaseline.values[textFieldBaseline],
        wordSpacing: textFieldwordSpacing,
        package: "",
        //foreground: null,
        // background: null,
        // locale: null,
        // fontVariations: <FontVariation>[FontVariation('wght', 900.0)],
      ),
    ),
    style: TextStyle(
      wordSpacing: textStylewordSpacing,
      textBaseline: TextBaseline.values[textStyleBaseline],
      shadows: List.empty(growable: textStyleshadows),
      package: "",
      overflow: TextOverflow.values[textStyleoverflow],
      letterSpacing: textStyleletterSpacing,
      leadingDistribution: TextLeadingDistribution.values[valuesStyleLeadingDistribution],
      inherit: textStyleinherit,
      height: textStyleheight,
      fontSize: textStylefontSize,
      fontFeatures: List.empty(growable: textStyleFeatures),
      fontFamilyFallback: List.empty(growable: textStyleFallback),
      fontFamily: textStaylefontFamily,
      decorationThickness: textStyleThickness,
      decorationStyle: TextDecorationStyle.values[valuesdecorationTextStyle],
      decorationColor: Color(int.parse(textStyleDColor)),
      decoration: gettextDecoration(textStyleDecoration),
      debugLabel: textStyledebugLabel,
      color: Color(int.parse(textStylecolor)),
      fontWeight: getFontWeight(textStylefontWeight),
      backgroundColor: Color(int.parse(bgTextStyle)),
      fontStyle: getFontStyle(textStyleFontStyle),
      // foreground: null,
      // locale: null,
      // background: null,
      // fontVariations: [FontVariation('wght', 900.0)],
    ),
  );
}
