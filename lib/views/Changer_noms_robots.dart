// ignore_for_file: sized_box_for_whitespace, no_leading_underscores_for_local_identifiers

import '../utils_flutter_flow/flutter_flow_icon_button.dart';
import '../utils_flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

import '../utils_flutter_flow/myservice.dart';


class ChangerLeNomDuRobotWidget extends StatefulWidget {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  String robotname;
  
  ChangerLeNomDuRobotWidget({Key? key, required this.robotname}) : super(key: key);
  @override
  State<ChangerLeNomDuRobotWidget> createState() => _ChangerLeNomDuRobotWidget();
  
}

class _ChangerLeNomDuRobotWidget extends State<ChangerLeNomDuRobotWidget>{
  final _controller = TextEditingController();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  void nouveauNom(String nouveauNom) {
    MyService.robotname = (nouveauNom);
    setState(() {});
  }

  String? get _errorText {
    final text = _controller.value.text;
    if (text.isEmpty) return 'Ne peut pas être vide';
    if (text.length < 4) return 'Trop court';
    if (text.length > 20) return 'Trop long';

    return null;
  }

  @override
  Widget build(BuildContext context) {// In the state class
    var _text = '';
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: InkWell(
          child: Text(
            MyService.robotname,
            style: FlutterFlowTheme.of(context).title2.override(
                  fontFamily: 'Jaldi',
                  color: Colors.white,
                  fontSize: 22,
                ),
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 200,
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20, 20, 20, 20),
                                  child: TextField(
                                    controller: _controller,
                                    autofocus: false,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      errorText: _errorText,
                                      hintText: 'Nouveau nom',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyText2,
                                    ),
                                    onChanged: (
                                      (text) => setState(() => _text)
                                    ),
                                    onSubmitted: (String text) {
                                      nouveauNom(text);
                                    },
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
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
    );
  }
}