// ignore_for_file: prefer_const_constructors

import 'Assistances.dart';
import 'Settings.dart';

import '../utils_flutter_flow/flutter_flow_icon_button.dart';
import '../utils_flutter_flow/flutter_flow_theme.dart';
import '../utils_flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';

import '../utils_flutter_flow/myservice.dart';
import 'login.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }
  late String robotname="Vacuum Fleet";

  @override
  Widget build(BuildContext context) {
    setState(() {});
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          // robotname,
          MyService.robotname,
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
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: FFButtonWidget(
                    onPressed: () {
                    },
                    text: 'Démarrer',
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
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0, -1),
                  child: FFButtonWidget(
                    onPressed: () {
                    },
                    text: 'Arrêt',
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
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0, -0.05),
                  child: FFButtonWidget(
                    onPressed: () {
                      _navigateToConnexionPage(context);
                    },
                    text: 'Connexion',
                    options: FFButtonOptions(
                      width: 200,
                      height: 40,
                      color: const Color(0xFF60CDF9),
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
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0, 1),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: Icon(
                        Icons.help_outline,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 30,
                      ),
                      onPressed: () {
                        _navigateToAssistance(context);},
                    )
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
                          Icons.settings,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 30,
                        ),
                        onPressed: () {
                          _navigateToSettings(context);},
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

void _navigateToSettings(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SettingsWidget(robotname: robotname))).then((_) => setState(() {}));
}
void _navigateToAssistance(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => AssistanceWidget()));
}
void _navigateToConnexionPage(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ConnexionPage(title: 'Authentication',)));
}
}
