import 'package:flutter/material.dart';
import 'package:mobile/commands/robot.dart';
import 'package:mobile/views/robotslist.dart';

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

    await configureRobot((params) async {
      await registerRobot(params[0], params[1]);
      setState(() {
        _isWaiting = false;
      });

      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => RobotsListPage(),
      ));
    });
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
                  size: 150,
                ),
        ),
      ),
    );
  }
}
