import 'dart:io';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart';

class ServicesUI {
  Future<ResponseModel> servicesUI(/*{String ip = ''}*/) async {
    try {
      var response = await rootBundle.loadString("assets/data.json").timeout(const Duration(minutes: 1));

      return ResponseModel(
        statusCode: 00,
        title: 'Sample Title1',
        message: 'Sample Message',
        result: jsonDecode(response),
        raw: response,
        hasError: false,
      );
    } on TimeoutException catch (e) {
      return ResponseModel(
        statusCode: 97,
        title: 'Sample Title2',
        message: 'Sample Message2',
        result: e.toString(),
        hasError: false,
      );
    } on SocketException catch (e) {
      return ResponseModel(
        statusCode: 98,
        title: 'Sample Title3',
        message: 'Sample Message3',
        result: e.toString(),
        hasError: true,
      );
    } on Error catch (e) {
      return ResponseModel(
        statusCode: 99,
        title: 'Sample Title4',
        message: 'Sample Message4',
        result: e.toString(),
        hasError: true,
      );
    }
  }
}

class ResponseModel {
  final dynamic result;
  final String raw;
  final int statusCode;
  final String message;
  final String subMessage;
  final String title;
  final bool hasError;

  ResponseModel({
    this.result,
    this.hasError = false,
    this.statusCode = 00,
    this.title = '',
    this.message = '',
    this.subMessage = '',
    this.raw = '',
  });
}
