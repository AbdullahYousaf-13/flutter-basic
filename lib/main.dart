import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
  home: Home()
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text('my first app'),
    centerTitle: true,
    backgroundColor: Colors.red[900],
    ),
    body: Center(
    child: Text(
    'helo niggas!',
    style: TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.bold,
    color: Colors.grey[600],
    fontFamily: 'RubikMaze',
    ),
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
