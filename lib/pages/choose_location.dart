import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() {

    //simulate network request for a username
    Future.delayed(Duration(seconds: 3), () {
      print('D-K');
    });

    print('Statement');

  }

  int counter = 1;

  @override
  void initState() {
    super.initState();
    getData();
    print('initState function ran');
  }

  @override
  Widget build(BuildContext context) {
    print('build function ran');
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: RaisedButton(
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
        child: Text('Counter is $counter'),
      ),
    );
  }
}