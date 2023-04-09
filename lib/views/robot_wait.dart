import 'package:flutter/material.dart';
import 'package:mobile/commands/robot.dart';

class RobotWaitWidget extends StatefulWidget {
  @override
  _RobotWaitWidgetState createState() => _RobotWaitWidgetState();
}

class _RobotWaitWidgetState extends State<RobotWaitWidget> {
  bool _isWaiting = true;

  @override
  void initState() {
    super.initState();
    sendDataToRobot();
  }

  sendDataToRobot() async {
    setState(() {
      _isWaiting = true;
    });

    await configureRobot();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: _isWaiting
              ? const CircularProgressIndicator()
              : const Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
        ),
      ),
    );
  }
}
