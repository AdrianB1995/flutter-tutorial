import 'package:flutter/material.dart';
import 'package:flutter_app/services/WorldTime.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  String time = 'loading';

  void setupWorldTime() async {
    WorldTime worldTime = WorldTime(location: 'America', flagURL: 'america.png', url: 'America/New_York');
    await worldTime.getTime();
    print(worldTime.localTime);
    setState(() {
      time = worldTime.localTime;
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text(
          time
        ),
      ),
    );
  }
}
