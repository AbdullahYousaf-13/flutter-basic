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
      body: Container(
        padding: EdgeInsets.all(100),
        margin: EdgeInsets.all(40),
        color: Colors.grey[900],
        child: RaisedButton (onPressed: () {
          print('You Clicked Button "Hello" ');
        },
        child: Text ('Hello'),
        ),
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