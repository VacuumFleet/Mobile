import 'package:mobile/services/requests.dart';
import 'dart:convert' as convert;
import 'package:mobile/config.dart';

void login(username, password, Function(bool authenticated) callback) async {
  String loginParams =
      "grant_type=&username=$username&password=$password&scope=&client_id=&client_secret=";
  var authResult = await authentication(loginParams);

  var jsonBody = convert.jsonDecode(authResult.body) as Map<String, dynamic>;
  await storage.write(key: 'token', value: jsonBody['access_token']);

  callback(authResult.statusCode == 200);
}
