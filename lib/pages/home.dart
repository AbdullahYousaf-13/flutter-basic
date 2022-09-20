import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    try {
      if (data.isEmpty) {
        data = ModalRoute.of(context)!.settings.arguments == null
            ? data
            : ModalRoute.of(context)!.settings.arguments as Map;
      } else {
        data = data;
      }
    } catch (e) {
      data = {};
    }
    print(data);

    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: SafeArea(
        child: Column(
          children: <Widget> [
            TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              icon: Icon(Icons.edit_location),
              label: Text('Edit Location'),
            ),
          ],
        ),
      ),
    );
  }
}