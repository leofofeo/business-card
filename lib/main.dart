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
                renderEmail(),
                renderPhoneNumber(),
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
      letterSpacing: 2.5,
      fontFamily: 'SourceSansPro',
    ),
  );
}

Widget renderEmail() {
  return Container(
    width: 300.0,
    padding: EdgeInsets.all(15.0),
    margin: EdgeInsets.only(top: 20.0),
    color: Colors.deepPurple[300],
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 15.0),
          child: Icon(
            Icons.email,
            size: 25.0,
            color: Colors.amber[300], 
          ),
        ),
        Text(
          'hey@leorubiano.com',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Quicksand',
            fontSize: 22.0,
          ),
        )
      ],
    ),
  );
}

Widget renderPhoneNumber() {
  return Container(
    width: 300.0,
    padding: EdgeInsets.all(15.0),
    margin: EdgeInsets.only(top: 20.0),
    color: Colors.deepPurple[300],
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 15.0),
          child: Icon(
            Icons.phone,
            size: 25.0,
            color: Colors.amber[300], 
          ),
        ),
        Text(
          '781-428-0644',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Quicksand',
            fontSize: 22.0,
          ),
        )
      ],
    ),
  );
}