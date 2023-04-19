import 'dart:async';
import 'dart:io';

import 'package:mobile/services/robot_service.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../config.dart';
import '../models/robot.dart';
import 'package:retry/retry.dart';

Future configureRobot(Function(List<String> params) callback) async {
  initRobotConnection(
      "Livebox-5840", "swept0-security-quotation-rocker", callback);
}

Future<List<Robot>> fetchRobots() async {
  var token = await storage.read(key: "token");
  final response = await http.get(Uri.parse("$apiUrl/robot/user"), headers: {
    HttpHeaders.authorizationHeader: "Bearer $token",
  });

  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body)["data"];
    return jsonResponse.map((robot) => Robot.fromJson(robot)).toList();
  } else {
    throw Exception('Failed to load robots');
  }
}

Future registerRobot(name, serial) async {
  var token = await storage.read(key: "token");
  final response = await retry(
    () => http.post(Uri.parse("$apiUrl/robot/"),
        headers: {
          HttpHeaders.authorizationHeader: "Bearer $token",
          HttpHeaders.contentTypeHeader: "application/json",
          HttpHeaders.acceptHeader: "application/json",
        },
        body: jsonEncode({
          "name": name,
          "serial": serial,
        })),
    retryIf: (e) => e is SocketException || e is TimeoutException,
  );

  if (response.statusCode != 200) {
    throw Exception('Failed to created robot.');
  }
}

void startRobot(id) async {
  var token = await storage.read(key: "token");
  final response =
      await http.get(Uri.parse("$apiUrl/robot/$id/start"), headers: {
    HttpHeaders.authorizationHeader: "Bearer $token",
  });

  if (response.statusCode != 200) {
    throw Exception('Failed to load robots');
  }
}

void stopRobot(id) async {
  var token = await storage.read(key: "token");
  final response =
      await http.get(Uri.parse("$apiUrl/robot/$id/stop"), headers: {
    HttpHeaders.authorizationHeader: "Bearer $token",
  });

  if (response.statusCode != 200) {
    throw Exception('Failed to load robots');
  }
}
