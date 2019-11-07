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
      //Padding widget does not allow margin properties or color, in this case you would use a
      // container like in the code below.
      body: Padding(
        padding: EdgeInsets.all(90.0),
        child: Text('hello'),
      ),
//      Container(
//        padding: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
//        margin: EdgeInsets.all(20.0),
//        color: Colors.red,
//        child: Text('Hello'),
//      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.blue[600],
      ),
    );
  }
}

