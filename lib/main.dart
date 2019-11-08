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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text('1'),
                color: Colors.red[100],
                padding: EdgeInsets.all(10.0),
              ),
              Container(
                child: Text('2'),
                color: Colors.red[200],
                padding: EdgeInsets.all(10.0),
              ),
              Container(
                child: Text('3'),
                color: Colors.red[300],
                padding: EdgeInsets.all(10.0),
              ),
              Container(
                child: Text('4'),
                color: Colors.red[400],
                padding: EdgeInsets.all(10.0),
              ),
              Container(
                child: Text('5'),
                color: Colors.red[500],
                padding: EdgeInsets.all(10.0),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                child: Text('1'),
                color: Colors.blue[100],
                padding: EdgeInsets.all(10.0),
              ),
              Container(
                child: Text('2'),
                color: Colors.blue[200],
                padding: EdgeInsets.all(10.0),
              ),
              Container(
                child: Text('3'),
                color: Colors.blue[300],
                padding: EdgeInsets.all(10.0),
              ),
              Container(
                child: Text('4'),
                color: Colors.blue[400],
                padding: EdgeInsets.all(10.0),
              ),
              Container(
                child: Text('5'),
                color: Colors.blue[500],
                padding: EdgeInsets.all(10.0),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                child: Text('1'),
                color: Colors.orange[100],
                padding: EdgeInsets.all(10.0),
              ),
              Container(
                child: Text('2'),
                color: Colors.orange[200],
                padding: EdgeInsets.all(10.0),
              ),
              Container(
                child: Text('3'),
                color: Colors.orange[300],
                padding: EdgeInsets.all(10.0),
              ),
              Container(
                child: Text('4'),
                color: Colors.orange[400],
                padding: EdgeInsets.all(10.0),
              ),
              Container(
                child: Text('5'),
                color: Colors.orange[500],
                padding: EdgeInsets.all(10.0),
              )
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.blue[600],
      ),
    );
  }
}

