import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  void getTime() async {
    Response timeResponse = await get('http://worldtimeapi.org/api/timezone/America/New_York');
    Map time = jsonDecode(timeResponse.body);
    //print(time);

    //Get properties from json object
    String dateTime = time['datetime'];
    String utcOffset = time['utc_offset'].substring(1,3);
    String operation = time['utc_offset'].substring(0,1);
    print(dateTime);
    print(utcOffset);
    print(operation);

    //create DateTime object
    DateTime now = DateTime.parse(dateTime);
    if(operation.startsWith('-')){
      now = now.subtract(Duration(hours: int.parse(utcOffset)));
    }else {
      now = now.add(Duration(hours: int.parse(utcOffset)));
    }
    print(now);
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        'loading screen'
      ),
    );
  }
}
