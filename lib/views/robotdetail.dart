import 'package:flutter/material.dart';
import 'package:mobile/commands/robot.dart';

import '../models/robot.dart';
import '../utils_flutter_flow/flutter_flow_theme.dart';

class RobotDetailPage extends StatelessWidget {
  final Robot robot;

  RobotDetailPage({required this.robot});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        title: Text(
          "Détail du robot",
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Jaldi',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${robot.name}'),
            Text('Serial: ${robot.serial}'),
            Text('ID: ${robot.id}'),
            Text('User: ${robot.user}'),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    startRobot(robot.id);
                  },
                  child: Text('Start'),
                ),
                ElevatedButton(
                  onPressed: () {
                    stopRobot(robot.id);
                  },
                  child: Text('Stop'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
