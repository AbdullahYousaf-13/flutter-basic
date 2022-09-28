import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  late String bgImage;
  late Color bgColor;


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
      bgImage = data['isDayTime'] ? 'day.png' : 'night.png';
      bgColor = (data['isDayTime'] ? Colors.blue : Colors.indigo[700])!;
    } catch (e) {
      print('waleed 2: $e');
      data = {};
    }

    // try {
    //   if (data.isEmpty) {
    //     data = data.isNotEmpty ? data : ModalRoute.of(context)!.settings.arguments == null
    //         ? data
    //         : ModalRoute.of(context)!.settings.arguments as Map;
    //   } else {
    //     data = data;
    //   }
    //   bgImage = data['isDaytime'] ? 'day.png' : 'night.png';
    //   bgColor = (data['isDaytime'] ? Colors.blue : Colors.indigo[700])!;
    // } catch (e) {
    //   data = {};
    // }
    // // print(data);

    // set background

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$bgImage'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
            child: Column(
              children: <Widget> [
                TextButton.icon(
                  onPressed: () async {
                    dynamic result = Navigator.pushNamed(context, '/location');
                    setState(() {
                      data = {
                        'time': result['time'],
                        'location': result ['location'],
                        'isDaytime': result ['isDaytime'],
                        'flag': result ['flag']
                      };
                    });
                  },
                  icon: Icon(
                    Icons.edit_location,
                    color: Colors.grey[900],
                    size: 20,
                  ),
                  label: Text(
                    'Edit Location',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[900],
                      fontFamily: 'RubikMaze',
                      letterSpacing: 1,
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      data['location'],
                      style: const TextStyle(
                        fontSize: 28,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                Text(
                  data['time'],
                  style: const TextStyle(
                    fontSize: 60,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}