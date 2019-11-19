import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'dart:convert';

class WorldTime {

  String location;   // Location name of UI
  String localTime; // Time in that location
  String flag; // URL to an asset flag image
  String url; // URL for world time API
  bool isDayTime; // boolean to determine if it is day or night

  WorldTime({ this.url, this.location, this.flag });

  Future<void> getTime() async {

    Response timeResponse = await get('http://worldtimeapi.org/api/timezone/$url');
    Map time = jsonDecode(timeResponse.body);

    //Get properties from json object
    String dateTime = time['datetime'];
    String utcOffset = time['utc_offset'].substring(1,3);
    String operation = time['utc_offset'].substring(0,1);

    //create DateTime object
    DateTime now = DateTime.parse(dateTime);
    if(operation.startsWith('-')){
      now = now.subtract(Duration(hours: int.parse(utcOffset)));
    }else {
      now = now.add(Duration(hours: int.parse(utcOffset)));
    }
    isDayTime = now.hour > 6 && now.hour < 20 ? true : false;
    localTime = DateFormat.jm().format(now);
  }
}