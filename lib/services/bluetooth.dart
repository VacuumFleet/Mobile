import 'dart:convert';

import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

Future sendBufferBluetooth(BluetoothConnection conn, String buff) async {
  conn.output.add(ascii.encode(buff));
  await conn.output.allSent;
}