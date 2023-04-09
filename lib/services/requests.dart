import 'dart:io';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:mobile/config.dart';

Future authentication(loginParams) async {
  var result = await http.post(Uri.parse("$apiUrl/token/"),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/x-www-form-urlencoded'
      },
      body: loginParams);
  return result;
}
