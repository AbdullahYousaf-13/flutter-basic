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
        margin: EdgeInsets.symmetric(horizontal: 63, vertical: 233),
        color: Colors.grey[900],
        child: Text ('Hello'),
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