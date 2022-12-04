import 'package:flutter_pdfview/flutter_pdfview.dart';
import '../utils_flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class ManuelDutilisationPdfWidget extends StatefulWidget {
  const ManuelDutilisationPdfWidget({Key? key}) : super(key: key);

  @override
  _ManuelDutilisationPdfWidgetState createState() => _ManuelDutilisationPdfWidgetState();
}

class _ManuelDutilisationPdfWidgetState extends State<ManuelDutilisationPdfWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final String pdf_path = "../assets/mentions_legales.pdf";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Manuel d\'utilisation',
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
            children: [
              Expanded(
                child: PDFView(
                  filePath: pdf_path,
                  enableSwipe: true,
                  swipeHorizontal: true,
                  autoSpacing: false,
                  pageFling: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
