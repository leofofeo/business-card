import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());    
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple[700],
        body: Center(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                renderAvatar(),
                renderName(),
                renderTitle(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget renderAvatar() {
  return CircleAvatar(
    radius: 50.0,
    backgroundImage: AssetImage('images/me.jpg'),
  );
}

Widget renderName() {
  return Text(
    'Leo Rubiano',
    style: TextStyle(
      color: Colors.white,
      fontSize: 40.0,
      fontFamily: 'Quicksand',
      fontWeight: FontWeight.w700,
    ),
  );
}

Widget renderTitle() {
  return Text(
    'DEVELOPER',
    style: TextStyle(
      color: Colors.white,
      fontSize: 20.0,
      fontFamily: 'SourceSansPro',
    ),
  );
}