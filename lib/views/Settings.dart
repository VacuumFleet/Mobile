// ignore_for_file: prefer_const_constructors

import 'Assistances.dart';
import 'Changer_noms_robots.dart';
import 'Configuration_du_robot.dart';

import '../utils_flutter_flow/flutter_flow_icon_button.dart';
import '../utils_flutter_flow/flutter_flow_theme.dart';
import '../utils_flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';

import '../utils_flutter_flow/myservice.dart';

import '../bluetooth/MainPage.dart';

class SettingsWidget extends StatefulWidget {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final String robotname;

  SettingsWidget({Key? key, required this.robotname}) : super(key: key);
  @override
  State<SettingsWidget> createState() => _SettingsWidget();
}

class _SettingsWidget extends State<SettingsWidget>{
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
          // 'Paramètres de $robotname',
          'Paramètres de ${MyService.robotname}',
          textAlign: TextAlign.center,
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
          child: Align(
            alignment: AlignmentDirectional(0.05, -0.3),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentDirectional(0, -0.05),
                  child: FFButtonWidget(
                    onPressed: () {
                      _navigateToChangerNom(context);},
                    text: 'Changer le nom du robot',
                    options: FFButtonOptions(
                      width: 200,
                      height: 40,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Jaldi',
                                color: Colors.white,
                              ),
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: FFButtonWidget(
                    onPressed: () {
                      _navigateToConfiguration(context);},
                    text: 'Configuration du robot',
                    options: FFButtonOptions(
                      width: 200,
                      height: 40,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Jaldi',
                                color: Colors.white,
                              ),
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0, 1),
                    child: FFButtonWidget(
                      onPressed: () {
                        _navigateToAssistance(context);},
                      text: 'Assistance',
                      options: FFButtonOptions(
                        width: 130,
                        height: 40,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Jaldi',
                                  color: Colors.white,
                                ),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: const AlignmentDirectional(1, 1),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: Icon(
                        Icons.keyboard_return,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 30,
                      ),
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
void _navigateToConfiguration(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainPage()));
}
void _navigateToAssistance(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AssistanceWidget()));
}
// void _navigateToChangerNom(BuildContext context) {
//   Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChangerLeNomDuRobotWidget(robotname: robotname)));
// }
void _navigateToChangerNom(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChangerLeNomDuRobotWidget(robotname: widget.robotname))).then((_) => setState(() {}));
  // Navigator.pushNamed(context, '/page2').then((_) => setState(() {}));
}
}
