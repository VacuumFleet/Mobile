import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mobile/views/login.dart';
import 'package:sizer/sizer.dart';

Future main() async {
  await dotenv.load(fileName: '.env');
  runApp(const VacuumFleet());
}

class VacuumFleet extends StatelessWidget {
  const VacuumFleet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'Cash Manager',
        theme: ThemeData(
          primarySwatch: Colors.lightBlue,
        ),
        home: const ConnexionPage(title: 'Authentication'),
      );
    });
  }
}
