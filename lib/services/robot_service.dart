import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:mobile/config.dart';

// Establish connection to the robot at ip 192.168.4.1 and port 8080
void initRobotConnection(String ssid, String password) async {
  Socket.connect('192.168.4.1', 8080).then((sock) {
    print("Socket connnected");
    sock.listen(
      (data) {
        String response = new String.fromCharCodes(data).trim();
        print(response);
        sock.destroy();
      },
      onDone: () {
        print("Socket closed");
        sock.destroy();
      },
    );

    sock.write("$ssid,$password\r\n");
  });
}

// Send the WiFi credentials to the robot
Future sendWifiCredentials(String ssid, String password) async {
  robotSocket!.write('$ssid,$password');

  StreamTransformer<Uint8List, String> utf8DecodeTransformer =
      StreamTransformer.fromHandlers(handleData: (data, sink) {
    sink.add(utf8.decode(data));
  });

  String response = await robotSocket!
      .transform(utf8DecodeTransformer)
      .transform(const LineSplitter())
      .firstWhere((line) => line == 'OK' || line == 'KO');

  return response == 'OK';
}
