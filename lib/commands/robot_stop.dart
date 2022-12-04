import 'package:mobile/services/bluetooth.dart';
import 'package:mobile/config.dart';

Future robotStop() async {
  await sendBufferBluetooth(robotConnection!, '0');
}