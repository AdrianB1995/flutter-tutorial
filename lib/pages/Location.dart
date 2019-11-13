import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async {

    //Simulate network request for a username to demonstrate dependent code!
    String username = await Future.delayed(Duration(seconds: 3), () {
      return 'Adrian';
    });

    //Simulate network request to get bio of the username
    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'The best person in the world!';
    });

    print('$username - $bio');
  }

  @override
  void initState() {
    super.initState();
    getData();
    print('This line should print no matter what even is getData() is not done!');
  }

  @override
  Widget build(BuildContext context) {
    print('build state function running');

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose location'),
        centerTitle: true,
        elevation: 0.0,
      ),
    );
  }
}
