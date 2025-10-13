import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({required String url}) async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
        'there is an error with status code ${response.statusCode}',
      );
    }
  }

  Future<dynamic> post({
    required String url,
    @required dynamic body,
    @required String? token,
  }) async {
    Map<String, String> Headers = {};
    if (token == null) {
      Headers.addAll({'Authorization': 'Bearer $token '});
    } else {
      Headers.addAll(Headers);

      http.Response response = await http.post(Uri.parse(url), body: body,
      headers: Headers);
      Map<String, dynamic> data = jsonDecode(response.body);
        return data;

    }
  }
}
