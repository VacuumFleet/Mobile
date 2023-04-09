import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

var apiUrl = dotenv.env['API_URL'] ?? 'http://localhost:8080';
const storage = FlutterSecureStorage();
Socket? robotSocket;
