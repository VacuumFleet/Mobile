import 'package:flutter/material.dart';
import 'package:mobile/views/robot_conf.dart';
import 'package:mobile/views/robotdetail.dart';

import '../commands/robot.dart';
import '../models/robot.dart';
import '../utils_flutter_flow/flutter_flow_theme.dart';

class RobotsListPage extends StatefulWidget {
  @override
  _RobotsListPageState createState() => _RobotsListPageState();
}

class _RobotsListPageState extends State<RobotsListPage> {
  late Future<List<Robot>> robots;

  @override
  void initState() {
    super.initState();
    robots = fetchRobots();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        title: Text(
          "Liste des robots",
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Jaldi',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
      ),
      body: Center(
        child: FutureBuilder<List<Robot>>(
          future: robots,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.separated(
                itemCount: snapshot.data!.length,
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(height: 2.0, color: Colors.grey);
                },
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              RobotDetailPage(robot: snapshot.data![index]),
                        ),
                      );
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
                      child: Text(
                        snapshot.data![index].name,
                        style: TextStyle(fontSize: 24, fontFamily: 'Jaldi'),
                      ),
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            return CircularProgressIndicator();
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => RobotConfigurationWidget()));
        },
        icon: const Icon(Icons.add),
        label: const Text("Ajouter un robot"),
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
      ),
    );
  }
}
