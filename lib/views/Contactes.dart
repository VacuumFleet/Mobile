// ignore_for_file: non_constant_identifier_names, prefer_const_constructors
import '../utils_flutter_flow/flutter_flow_icon_button.dart';
import '../utils_flutter_flow/flutter_flow_theme.dart';
import '../utils_flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';

import '../utils_flutter_flow/myservice.dart';

class ContactesWidget extends StatefulWidget {
  const ContactesWidget({Key? key}) : super(key: key);

  @override
  _ContactesWidgetState createState() => _ContactesWidgetState();
}

class _ContactesWidgetState extends State<ContactesWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  // final String tel_contact = "0612345698";
  // final String email_contact = "vacuumfleet_help@gmail.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Contactes',
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
            alignment: AlignmentDirectional(0.15, 0.45),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0, 0.9),
                    child: FFButtonWidget(
                      onPressed: () async{
                        _onTapToolTip();
                      },
                      text: MyService.telcontact,
                      options: FFButtonOptions(
                        width: 220,
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
                      onPressed: () async{
                        _onTapToolTip();
                      },
                      text: MyService.emailcontact,
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
                Align(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
Future<Tooltip> _onTapToolTip() async{  
  return Tooltip(
    message: "HAHAAHA",
    child: Card(
      semanticContainer: true,
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 12
        ),
      ),
    ),
  );            
}
}
