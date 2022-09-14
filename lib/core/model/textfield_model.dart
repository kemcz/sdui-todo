class ParseTextField {
  String? code;
  String? message;
  Data? data;

  ParseTextField({this.code, this.message, this.data});

  ParseTextField.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  List<Field>? field;

  Data({this.field});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['field'] != null) {
      field = <Field>[];
      json['field'].forEach((v) {
        field!.add(new Field.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.field != null) {
      data['field'] = this.field!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Field {
  String? title;
  String? widgetType;
  Designs? designs;

  Field({this.title, this.widgetType, this.designs});

  Field.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    widgetType = json['widgetType'];
    designs = json['designs'] != null ? new Designs.fromJson(json['designs']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['widgetType'] = this.widgetType;
    if (this.designs != null) {
      data['designs'] = this.designs!.toJson();
    }
    return data;
  }
}

class Designs {
  String? controller;
  String? keyboardType;
  String? obscureText;
  String? autofocus;
  String? autocorrect;
  int? cursorWidth;
  int? cursorHeight;
  int? textDirection;
  int? textAlign;
  int? maxLines;
  int? clipBehavior;
  String? enableIMEPersonalizedLearning;
  String? enableInteractiveSelection;
  String? enableSuggestions;
  String? expands;
  int? keyboardAppearance;
  int? maxLength;
  int? minLines;
  String? enabled;
  String? readOnly;
  String? showCursor;
  String? scribbleEnabled;
  int? dragStartBehavior;
  String? textAlignVertical;
  int? textCapitalization;
  int? textInputAction;
  ToolbarOptions? toolbarOptions;
  int? selectionHeightStyle;
  int? selectionWidthStyle;
  int? scrollPadding;
  int? maxLengthEnforcement;
  String? mouseCursor;
  int? textFieldcursorRadius;
  String? cursorColor;
  StrutStyle? strutStyle;
  Decoration? decoration;

  Designs({this.controller, this.keyboardType, this.obscureText, this.autofocus, this.autocorrect, this.cursorWidth, this.cursorHeight, this.textDirection, this.textAlign, this.maxLines, this.clipBehavior, this.enableIMEPersonalizedLearning, this.enableInteractiveSelection, this.enableSuggestions, this.expands, this.keyboardAppearance, this.maxLength, this.minLines, this.enabled, this.readOnly, this.showCursor, this.scribbleEnabled, this.dragStartBehavior, this.textAlignVertical, this.textCapitalization, this.textInputAction, this.toolbarOptions, this.selectionHeightStyle, this.selectionWidthStyle, this.scrollPadding, this.maxLengthEnforcement, this.mouseCursor, this.textFieldcursorRadius, this.cursorColor, this.strutStyle, this.decoration});

  Designs.fromJson(Map<String, dynamic> json) {
    controller = json['controller'];
    keyboardType = json['keyboardType'];
    obscureText = json['obscureText'];
    autofocus = json['autofocus'];
    autocorrect = json['autocorrect'];
    cursorWidth = json['cursorWidth'];
    cursorHeight = json['cursorHeight'];
    textDirection = json['textDirection'];
    textAlign = json['textAlign'];
    maxLines = json['maxLines'];
    clipBehavior = json['clipBehavior'];
    enableIMEPersonalizedLearning = json['enableIMEPersonalizedLearning'];
    enableInteractiveSelection = json['enableInteractiveSelection'];
    enableSuggestions = json['enableSuggestions'];
    expands = json['expands'];
    keyboardAppearance = json['keyboardAppearance'];
    maxLength = json['maxLength'];
    minLines = json['minLines'];
    enabled = json['enabled'];
    readOnly = json['readOnly'];
    showCursor = json['showCursor'];
    scribbleEnabled = json['scribbleEnabled'];
    dragStartBehavior = json['dragStartBehavior'];
    textAlignVertical = json['textAlignVertical'];
    textCapitalization = json['textCapitalization'];
    textInputAction = json['textInputAction'];
    toolbarOptions = json['toolbarOptions'] != null ? new ToolbarOptions.fromJson(json['toolbarOptions']) : null;
    selectionHeightStyle = json['selectionHeightStyle'];
    selectionWidthStyle = json['selectionWidthStyle'];
    scrollPadding = json['scrollPadding'];
    maxLengthEnforcement = json['maxLengthEnforcement'];
    mouseCursor = json['mouseCursor'];
    textFieldcursorRadius = json['textFieldcursorRadius'];
    cursorColor = json['cursorColor'];
    strutStyle = json['strutStyle'] != null ? new StrutStyle.fromJson(json['strutStyle']) : null;
    decoration = json[' decoration'] != null ? new Decoration.fromJson(json[' decoration']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['controller'] = this.controller;
    data['keyboardType'] = this.keyboardType;
    data['obscureText'] = this.obscureText;
    data['autofocus'] = this.autofocus;
    data['autocorrect'] = this.autocorrect;
    data['cursorWidth'] = this.cursorWidth;
    data['cursorHeight'] = this.cursorHeight;
    data['textDirection'] = this.textDirection;
    data['textAlign'] = this.textAlign;
    data['maxLines'] = this.maxLines;
    data['clipBehavior'] = this.clipBehavior;
    data['enableIMEPersonalizedLearning'] = this.enableIMEPersonalizedLearning;
    data['enableInteractiveSelection'] = this.enableInteractiveSelection;
    data['enableSuggestions'] = this.enableSuggestions;
    data['expands'] = this.expands;
    data['keyboardAppearance'] = this.keyboardAppearance;
    data['maxLength'] = this.maxLength;
    data['minLines'] = this.minLines;
    data['enabled'] = this.enabled;
    data['readOnly'] = this.readOnly;
    data['showCursor'] = this.showCursor;
    data['scribbleEnabled'] = this.scribbleEnabled;
    data['dragStartBehavior'] = this.dragStartBehavior;
    data['textAlignVertical'] = this.textAlignVertical;
    data['textCapitalization'] = this.textCapitalization;
    data['textInputAction'] = this.textInputAction;
    if (this.toolbarOptions != null) {
      data['toolbarOptions'] = this.toolbarOptions!.toJson();
    }
    data['selectionHeightStyle'] = this.selectionHeightStyle;
    data['selectionWidthStyle'] = this.selectionWidthStyle;
    data['scrollPadding'] = this.scrollPadding;
    data['maxLengthEnforcement'] = this.maxLengthEnforcement;
    data['mouseCursor'] = this.mouseCursor;
    data['textFieldcursorRadius'] = this.textFieldcursorRadius;
    data['cursorColor'] = this.cursorColor;
    if (this.strutStyle != null) {
      data['strutStyle'] = this.strutStyle!.toJson();
    }
    if (this.decoration != null) {
      data[' decoration'] = this.decoration!.toJson();
    }
    return data;
  }
}

class ToolbarOptions {
  String? copy;

  ToolbarOptions({this.copy});

  ToolbarOptions.fromJson(Map<String, dynamic> json) {
    copy = json['copy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['copy'] = this.copy;
    return data;
  }
}

class StrutStyle {
  String? package;
  int? leading;
  int? fontSize;
  int? height;
  String? fontFamily;
  String? forceStrutHeight;
  String? fontStyle;
  String? fontFamilyFallback;
  int? leadingDistribution;

  StrutStyle({this.package, this.leading, this.fontSize, this.height, this.fontFamily, this.forceStrutHeight, this.fontStyle, this.fontFamilyFallback, this.leadingDistribution});

  StrutStyle.fromJson(Map<String, dynamic> json) {
    package = json['package'];
    leading = json['leading'];
    fontSize = json['fontSize'];
    height = json['height'];
    fontFamily = json['fontFamily'];
    forceStrutHeight = json['forceStrutHeight'];
    fontStyle = json['fontStyle'];
    fontFamilyFallback = json['fontFamilyFallback'];
    leadingDistribution = json['leadingDistribution'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['package'] = this.package;
    data['leading'] = this.leading;
    data['fontSize'] = this.fontSize;
    data['height'] = this.height;
    data['fontFamily'] = this.fontFamily;
    data['forceStrutHeight'] = this.forceStrutHeight;
    data['fontStyle'] = this.fontStyle;
    data['fontFamilyFallback'] = this.fontFamilyFallback;
    data['leadingDistribution'] = this.leadingDistribution;
    return data;
  }
}

class Decoration {
  String? labelText;
  String? hintText;
  String? alignLabelWithHint;
  int? contentPadding;
  Border? border;
  Constraints? constraints;
  Counter? counter;
  CounterStyle? counterStyle;
  Style? style;

  Decoration({this.labelText, this.hintText, this.alignLabelWithHint, this.contentPadding, this.border, this.constraints, this.counter, this.counterStyle, this.style});

  Decoration.fromJson(Map<String, dynamic> json) {
    labelText = json['labelText'];
    hintText = json['hintText'];
    alignLabelWithHint = json['alignLabelWithHint'];
    contentPadding = json['contentPadding'];
    border = json['border'] != null ? new Border.fromJson(json['border']) : null;
    constraints = json['constraints'] != null ? new Constraints.fromJson(json['constraints']) : null;
    counter = json['counter'] != null ? new Counter.fromJson(json['counter']) : null;
    counterStyle = json['counterStyle'] != null ? new CounterStyle.fromJson(json['counterStyle']) : null;
    style = json['style'] != null ? new Style.fromJson(json['style']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['labelText'] = this.labelText;
    data['hintText'] = this.hintText;
    data['alignLabelWithHint'] = this.alignLabelWithHint;
    data['contentPadding'] = this.contentPadding;
    if (this.border != null) {
      data['border'] = this.border!.toJson();
    }
    if (this.constraints != null) {
      data['constraints'] = this.constraints!.toJson();
    }
    if (this.counter != null) {
      data['counter'] = this.counter!.toJson();
    }
    if (this.counterStyle != null) {
      data['counterStyle'] = this.counterStyle!.toJson();
    }
    if (this.style != null) {
      data['style'] = this.style!.toJson();
    }
    return data;
  }
}

class Border {
  int? borderRadius;

  Border({this.borderRadius});

  Border.fromJson(Map<String, dynamic> json) {
    borderRadius = json['borderRadius'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['borderRadius'] = this.borderRadius;
    return data;
  }
}

class Constraints {
  String? maxHeight;
  String? minWidth;

  Constraints({this.maxHeight, this.minWidth});

  Constraints.fromJson(Map<String, dynamic> json) {
    maxHeight = json['maxHeight'];
    minWidth = json['minWidth'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['maxHeight'] = this.maxHeight;
    data['minWidth'] = this.minWidth;
    return data;
  }
}

class Counter {
  int? widthFactor;
  int? heightFactor;

  Counter({this.widthFactor, this.heightFactor});

  Counter.fromJson(Map<String, dynamic> json) {
    widthFactor = json['widthFactor'];
    heightFactor = json['heightFactor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['widthFactor'] = this.widthFactor;
    data['heightFactor'] = this.heightFactor;
    return data;
  }
}

class CounterStyle {
  String? backgroundColor;
  String? fontWeight;
  String? color;
  String? debugLabel;
  String? decoration;
  String? decorationColor;
  int? decorationStyle;
  int? decorationThickness;
  String? fontFamily;
  String? fontFamilyFallback;
  String? fontFeatures;
  int? fontSize;
  String? fontStyle;
  int? height;
  String? inherit;
  int? leadingDistribution;
  int? letterSpacing;
  int? overflow;
  String? shadows;
  int? textBaseline;
  int? wordSpacing;
  String? package;

  CounterStyle({this.backgroundColor, this.fontWeight, this.color, this.debugLabel, this.decoration, this.decorationColor, this.decorationStyle, this.decorationThickness, this.fontFamily, this.fontFamilyFallback, this.fontFeatures, this.fontSize, this.fontStyle, this.height, this.inherit, this.leadingDistribution, this.letterSpacing, this.overflow, this.shadows, this.textBaseline, this.wordSpacing, this.package});

  CounterStyle.fromJson(Map<String, dynamic> json) {
    backgroundColor = json['backgroundColor'];
    fontWeight = json['fontWeight'];
    color = json['color'];
    debugLabel = json['debugLabel'];
    decoration = json['decoration'];
    decorationColor = json['decorationColor'];
    decorationStyle = json['decorationStyle'];
    decorationThickness = json['decorationThickness'];
    fontFamily = json['fontFamily'];
    fontFamilyFallback = json['fontFamilyFallback'];
    fontFeatures = json['fontFeatures'];
    fontSize = json['fontSize'];
    fontStyle = json['fontStyle'];
    height = json['height'];
    inherit = json['inherit'];
    leadingDistribution = json['leadingDistribution'];
    letterSpacing = json['letterSpacing'];
    overflow = json['overflow'];
    shadows = json['shadows'];
    textBaseline = json['textBaseline'];
    wordSpacing = json['wordSpacing'];
    package = json['package'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['backgroundColor'] = this.backgroundColor;
    data['fontWeight'] = this.fontWeight;
    data['color'] = this.color;
    data['debugLabel'] = this.debugLabel;
    data['decoration'] = this.decoration;
    data['decorationColor'] = this.decorationColor;
    data['decorationStyle'] = this.decorationStyle;
    data['decorationThickness'] = this.decorationThickness;
    data['fontFamily'] = this.fontFamily;
    data['fontFamilyFallback'] = this.fontFamilyFallback;
    data['fontFeatures'] = this.fontFeatures;
    data['fontSize'] = this.fontSize;
    data['fontStyle'] = this.fontStyle;
    data['height'] = this.height;
    data['inherit'] = this.inherit;
    data['leadingDistribution'] = this.leadingDistribution;
    data['letterSpacing'] = this.letterSpacing;
    data['overflow'] = this.overflow;
    data['shadows'] = this.shadows;
    data['textBaseline'] = this.textBaseline;
    data['wordSpacing'] = this.wordSpacing;
    data['package'] = this.package;
    return data;
  }
}

class Style {
  int? wordSpacing;
  int? textBaseline;
  String? shadows;
  String? package;
  int? overflow;
  int? letterSpacing;
  int? leadingDistribution;
  String? inherit;
  int? height;
  int? fontSize;
  String? fontFeatures;
  String? fontFamilyFallback;
  String? fontFamily;
  int? decorationThickness;
  int? decorationStyle;
  String? decorationColor;
  String? decoration;
  String? debugLabel;
  String? color;
  String? fontWeight;
  String? backgroundColor;
  String? fontStyle;

  Style({this.wordSpacing, this.textBaseline, this.shadows, this.package, this.overflow, this.letterSpacing, this.leadingDistribution, this.inherit, this.height, this.fontSize, this.fontFeatures, this.fontFamilyFallback, this.fontFamily, this.decorationThickness, this.decorationStyle, this.decorationColor, this.decoration, this.debugLabel, this.color, this.fontWeight, this.backgroundColor, this.fontStyle});

  Style.fromJson(Map<String, dynamic> json) {
    wordSpacing = json['wordSpacing'];
    textBaseline = json['textBaseline'];
    shadows = json['shadows'];
    package = json['package'];
    overflow = json['overflow'];
    letterSpacing = json['letterSpacing'];
    leadingDistribution = json['leadingDistribution'];
    inherit = json['inherit'];
    height = json['height'];
    fontSize = json['fontSize'];
    fontFeatures = json['fontFeatures'];
    fontFamilyFallback = json['fontFamilyFallback'];
    fontFamily = json['fontFamily'];
    decorationThickness = json['decorationThickness'];
    decorationStyle = json['decorationStyle'];
    decorationColor = json['decorationColor'];
    decoration = json['decoration'];
    debugLabel = json['debugLabel'];
    color = json['color'];
    fontWeight = json[' fontWeight'];
    backgroundColor = json[' backgroundColor'];
    fontStyle = json['fontStyle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['wordSpacing'] = this.wordSpacing;
    data['textBaseline'] = this.textBaseline;
    data['shadows'] = this.shadows;
    data['package'] = this.package;
    data['overflow'] = this.overflow;
    data['letterSpacing'] = this.letterSpacing;
    data['leadingDistribution'] = this.leadingDistribution;
    data['inherit'] = this.inherit;
    data['height'] = this.height;
    data['fontSize'] = this.fontSize;
    data['fontFeatures'] = this.fontFeatures;
    data['fontFamilyFallback'] = this.fontFamilyFallback;
    data['fontFamily'] = this.fontFamily;
    data['decorationThickness'] = this.decorationThickness;
    data['decorationStyle'] = this.decorationStyle;
    data['decorationColor'] = this.decorationColor;
    data['decoration'] = this.decoration;
    data['debugLabel'] = this.debugLabel;
    data['color'] = this.color;
    data[' fontWeight'] = this.fontWeight;
    data[' backgroundColor'] = this.backgroundColor;
    data['fontStyle'] = this.fontStyle;
    return data;
  }
}
