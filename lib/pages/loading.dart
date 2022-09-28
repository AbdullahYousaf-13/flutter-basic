import 'package:flutter/material.dart';
import 'package:my_first_app/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  Future<void> setupWorldTime() async {
    WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
    await instance.getTime();
    Navigator.pushReplacementNamed (context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDaytime': instance.isDaytime,
    });

  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Center(
        child: SpinKitSpinningLines(
          size: 50.0,
          color: Colors.black,
        ),
      ),
    );
  }
}