import 'package:flutter/material.dart';

class ChoseLocation extends StatefulWidget {
  const ChoseLocation({Key? key}) : super(key: key);

  @override
  State<ChoseLocation> createState() => _ChoseLocationState();
}

class _ChoseLocationState extends State<ChoseLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Choose location Screen'),
    );
  }
}