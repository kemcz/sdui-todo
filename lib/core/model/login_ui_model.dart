class LoginUI {
  String? code;
  String? message;
  Data? data;

  LoginUI({this.code, this.message, this.data});

  LoginUI.fromJson(Map<String, dynamic> json) {
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
  String? fieldName;
  String? fieldType;
  String? widgetType;
  bool? isShown;
  bool? isEnabled;
  Design? design;

  Field({this.fieldName, this.fieldType, this.widgetType, this.isShown, this.isEnabled, this.design});

  Field.fromJson(Map<String, dynamic> json) {
    fieldName = json['fieldName'];
    fieldType = json['fieldType'];
    widgetType = json['widgetType'];
    isShown = json['isShown'];
    isEnabled = json['isEnabled'];
    design = json['design'] != null ? new Design.fromJson(json['design']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fieldName'] = this.fieldName;
    data['fieldType'] = this.fieldType;
    data['widgetType'] = this.widgetType;
    data['isShown'] = this.isShown;
    data['isEnabled'] = this.isEnabled;
    if (this.design != null) {
      data['design'] = this.design!.toJson();
    }
    return data;
  }
}

class Design {
  String? hexColor;
  int? fontsize;
  int? padding;
  String? visibility;

  Design({this.hexColor, this.fontsize, this.padding, this.visibility});

  Design.fromJson(Map<String, dynamic> json) {
    hexColor = json['hexColor'];
    fontsize = json['fontsize'];
    padding = json['padding'];
    visibility = json['visibility'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hexColor'] = this.hexColor;
    data['fontsize'] = this.fontsize;
    data['padding'] = this.padding;
    data['visibility'] = this.visibility;
    return data;
  }
}
