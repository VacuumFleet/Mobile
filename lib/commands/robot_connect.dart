import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:mobile/config.dart';

Future robotConnect() async {
  var robotAddress = await storage.read(key: "robotAddress");
  await BluetoothConnection.toAddress(robotAddress).then((connection) async {
    robotConnection = connection;
  });
}