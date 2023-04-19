import 'package:flutter/material.dart';
import 'package:mobile/views/main_page.dart';
import 'package:mobile/commands/authentication.dart';
import 'package:mobile/views/robotslist.dart';
import 'package:sizer/sizer.dart';

import '../utils_flutter_flow/flutter_flow_theme.dart';

class ConnexionPage extends StatefulWidget {
  const ConnexionPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ConnexionPage> createState() => _ConnexionPageState();
}

class _ConnexionPageState extends State<ConnexionPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        title: Text(
          "Connexion",
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Jaldi',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 75.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
              const SizedBox(height: 32),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          login(
              usernameController.text, passwordController.text, _loginCallback);
        },
        icon: const Icon(Icons.check_circle_outline),
        label: const Text("Se connecter"),
        backgroundColor: Colors.green[400],
      ),
    );
  }

  void _loginCallback(bool authenticated) {
    if (authenticated) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => RobotsListPage(),
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Authentication failed."),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}
