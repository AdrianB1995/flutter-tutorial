import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: IdCard()
));

/*The code below essentially means that we are creating our own widget class
that is extending the StatelessWidget class*/
// Stateless widgets cannot change over time.
// Stateful widget can change over time.
class IdCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Personal ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/black-spiderman.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Adrian-Borrego',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'CURRENT LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '99',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                 'adrian-ninja@us.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.blue[600],
      ),
    );
  }
}

