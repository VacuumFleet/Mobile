import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:mobile/config.dart';

// Establish connection to the robot at ip 192.168.4.1 and port 8080
void initRobotConnection(String ssid, String password,
    Function(List<String> params) callback) async {
  Socket.connect('192.168.4.1', 8080).then((sock) {
    print("Socket connnected");
    sock.listen(
      (data) {
        String response = new String.fromCharCodes(data).trim();
        List<String> params = response.split(",");
        callback(params);
      },
      onDone: () {
        print("Socket closed");
      },
    );

    sock.write("$ssid,$password\r\n");
  });
}
