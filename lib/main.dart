import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.red[900],
      ),
      body: Center(
        child: IconButton(
          onPressed: () {
            print('You Clicked "Mail Icon" ');
          },
          icon: Icon(Icons.mail),
          color: Colors.red[900],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Text('click'),
        backgroundColor: Colors.red[900],
      ),
    );
  }
}