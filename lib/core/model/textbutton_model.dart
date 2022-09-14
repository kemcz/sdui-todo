class ParseTextButton {
  String? title;
  String? widgetType;
  Design? design;

  ParseTextButton({this.title, this.widgetType, this.design});

  ParseTextButton.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    widgetType = json['widgetType'];
    design = json['design'] != null ? new Design.fromJson(json['design']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['widgetType'] = this.widgetType;
    if (this.design != null) {
      data['design'] = this.design!.toJson();
    }
    return data;
  }
}

class Design {
  String? color;
  String? alignment;
  int? animationDuration;
  String? backgroundColor;
  List<int>? padding;
  int? fixedSize;
  String? foregroundColor;
  int? maximumSize;
  int? minimumSize;
  String? mouseCursor;
  String? overlayColor;
  String? shadowColor;
  String? side;
  TextStyle? textStyle;
  List<int>? visualDensity;
  String? enableFeedback;
  String? splashFactory;
  String? surfaceTintColor;
  int? tapTargetSize;

  Design({this.color, this.alignment, this.animationDuration, this.backgroundColor, this.padding, this.fixedSize, this.foregroundColor, this.maximumSize, this.minimumSize, this.mouseCursor, this.overlayColor, this.shadowColor, this.side, this.textStyle, this.visualDensity, this.enableFeedback, this.splashFactory, this.surfaceTintColor, this.tapTargetSize});

  Design.fromJson(Map<String, dynamic> json) {
    color = json['color'];
    alignment = json['alignment'];
    animationDuration = json['animationDuration'];
    backgroundColor = json['backgroundColor'];
    padding = json['padding'].cast<int>();
    fixedSize = json['fixedSize'];
    foregroundColor = json['foregroundColor'];
    maximumSize = json['maximumSize'];
    minimumSize = json['minimumSize'];
    mouseCursor = json['mouseCursor'];
    overlayColor = json['overlayColor'];
    shadowColor = json['shadowColor'];
    side = json['side'];
    textStyle = json['textStyle'] != null ? new TextStyle.fromJson(json['textStyle']) : null;
    visualDensity = json['visualDensity'].cast<int>();
    enableFeedback = json['enableFeedback'];
    splashFactory = json['splashFactory'];
    surfaceTintColor = json['surfaceTintColor'];
    tapTargetSize = json['tapTargetSize'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['color'] = this.color;
    data['alignment'] = this.alignment;
    data['animationDuration'] = this.animationDuration;
    data['backgroundColor'] = this.backgroundColor;
    data['padding'] = this.padding;
    data['fixedSize'] = this.fixedSize;
    data['foregroundColor'] = this.foregroundColor;
    data['maximumSize'] = this.maximumSize;
    data['minimumSize'] = this.minimumSize;
    data['mouseCursor'] = this.mouseCursor;
    data['overlayColor'] = this.overlayColor;
    data['shadowColor'] = this.shadowColor;
    data['side'] = this.side;
    if (this.textStyle != null) {
      data['textStyle'] = this.textStyle!.toJson();
    }
    data['visualDensity'] = this.visualDensity;
    data['enableFeedback'] = this.enableFeedback;
    data['splashFactory'] = this.splashFactory;
    data['surfaceTintColor'] = this.surfaceTintColor;
    data['tapTargetSize'] = this.tapTargetSize;
    return data;
  }
}

class TextStyle {
  String? backgroundColor;

  TextStyle({this.backgroundColor});

  TextStyle.fromJson(Map<String, dynamic> json) {
    backgroundColor = json['backgroundColor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['backgroundColor'] = this.backgroundColor;
    return data;
  }
}
