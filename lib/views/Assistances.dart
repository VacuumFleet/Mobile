// ignore_for_file: prefer_const_constructors

import 'Contactes.dart';
import 'Manuel_utilisation.dart';

import '../utils_flutter_flow/flutter_flow_icon_button.dart';
import '../utils_flutter_flow/flutter_flow_theme.dart';
import '../utils_flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';

class AssistanceWidget extends StatefulWidget {
  const AssistanceWidget({Key? key}) : super(key: key);

  @override
  _AssistanceWidgetState createState() => _AssistanceWidgetState();
}

class _AssistanceWidgetState extends State<AssistanceWidget> {
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
          'Assistance',
          textAlign: TextAlign.center,
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Jaldi',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Align(
            alignment: AlignmentDirectional(0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: FFButtonWidget(
                      onPressed: () {
                        _navigateToManuelUtilisation(context);
                      },
                      text: 'Manuel d\'utilisation',
                      options: FFButtonOptions(
                        width: 200,
                        height: 40,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Jaldi',
                                  color: Colors.white,
                                ),
                        borderSide: BorderSide(
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
                        _navigateToManuelUtilisation(context);},
                      text: 'Mentions Legales',
                      options: FFButtonOptions(
                        width: 200,
                        height: 40,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Jaldi',
                                  color: Colors.white,
                                ),
                        borderSide: BorderSide(
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
                      _navigateToContact(context);},
                      text: 'Contactes',
                      options: FFButtonOptions(
                        width: 200,
                        height: 40,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Jaldi',
                                  color: Colors.white,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(1, 1),
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

void _navigateToContact(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ContactesWidget()));
}
void _navigateToManuelUtilisation(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ManuelDutilisationPdfWidget()));
}
}
