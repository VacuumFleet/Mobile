import 'package:mobile/services/bluetooth.dart';
import 'package:mobile/config.dart';

Future robotStart() async {
  await sendBufferBluetooth(robotConnection!, '1');
}