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
        child: Column(
          children: <Widget>[
            Text(
              'There\'s more than meets the eye!',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w900,
                letterSpacing: 2.0,
                color: Colors.black,
                fontFamily: 'YeonSung',
              ),
            ),
            Image(
                image: NetworkImage('https://images.unsplash.com/photo-1571757767119-68b8dbed8c97?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
            ),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.blue[600],
      ),
    );
  }
}

