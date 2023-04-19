import 'package:mobile/views/robot_wait.dart';

import '../utils_flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class RobotConfigurationWidget extends StatelessWidget {
  RobotConfigurationWidget({Key? key}) : super(key: key);
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        title: Text(
          "Configuration d'un nouveau robot",
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Jaldi',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        centerTitle: true,
        elevation: 2,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.wifi,
              size: 80,
              color: FlutterFlowTheme.of(context).primaryColor,
            ),
            SizedBox(height: 20),
            Text(
              'Connectez-vous au WiFi du robot',
              style: TextStyle(fontSize: 21, fontFamily: 'Jaldi'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          _navigateToRobotWait(context);
        },
        label: const Text('Suivant'),
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
      ),
    );
  }

  void _navigateToRobotWait(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => RobotWaitWidget(),
      ),
    );
  }
}
