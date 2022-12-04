import '../utils_flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

import '../utils_flutter_flow/myservice.dart';

class ConfigurationDuRobotWidget extends StatelessWidget {
  final String robotname;
  ConfigurationDuRobotWidget({Key? key, required this.robotname}) : super(key: key);
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          "Configuration de ${MyService.robotname}",
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Jaldi',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
          ),
        ),
      ),
    );
  }
}
