import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

Future<Response<dynamic>> getJsonFromHttp(String text) async {
  final dio = Dio();
  final response =
      await dio.get("https://api.github.com/search/repositories?q=$text");
  return response;
}

goPage(Function builder, BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => builder()));
}
