import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

var apiUrl = dotenv.env['API_URL'] ?? 'http://localhost:8080';
const storage = FlutterSecureStorage();
BluetoothConnection? robotConnection;