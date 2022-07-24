import 'package:mobile/services/requests.dart';
import 'dart:convert' as convert;
import 'package:mobile/config.dart';

void login(username, password, Function(bool authenticated) callback) async {
  Map loginParams = {"name": username, "password": password};
  var authResult = await authentication(loginParams);

  var jsonBody = convert.jsonDecode(authResult.body) as Map<String, dynamic>;
  await storage.write(key: 'token', value: jsonBody['jwtToken']);

  callback(authResult.statusCode == 200);
}
