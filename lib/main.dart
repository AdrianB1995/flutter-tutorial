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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.blue[600],
      ),
    );
  }
}

