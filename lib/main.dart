import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text('Hello World ==>'),
            padding: EdgeInsets.all(30),
            color: Colors.grey[900],
          ),
          RaisedButton(
            onPressed: () {},
            color: Colors.blueGrey[900],
            padding: EdgeInsets.all(30),
            child: Text('Click Me'),
          ),
          Container(
            color: Colors.grey[900],
            padding: EdgeInsets.all(30),
            child: Text('<== Hello World'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('You Clicked Button "Click" ');
        },
        child: Text('click'),
        backgroundColor: Colors.black,
      ),
    );
  }
}