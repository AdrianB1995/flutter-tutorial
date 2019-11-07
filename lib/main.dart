import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home()
));

/*The code below essentially means that we are creating our own widget class
that is extending the StatelessWidget class*/
// Stateless widgets cannot change over time.
// Stateful widget can change over time.
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Hello World'),
          centerTitle: true,
          backgroundColor: Colors.blue[600]
      ),
      body: Center(
        child: IconButton(
            onPressed: () {
              print('you clicked me');
            },
            icon: Icon(Icons.alternate_email),
      ),

//        child: RaisedButton.icon(
//            onPressed: () {},
//            icon: Icon(
//              Icons.mail
//            ),
//            label: Text('mail me'),
//            color: Colors.amber,
//        ),
//        child: FlatButton(
//          onPressed: () {
//            //code executed when pressed
//            print('you clicked me');
//          },
//          child: Text('Click me'),
//          color: Colors.lightBlue,
//            ),
//        child: Icon(
//          Icons.airport_shuttle,
//          color: Colors.lightBlue,
//          size: 50,
//        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.blue[600],
      ),
    );
  }
}

