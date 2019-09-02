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
                SizedBox(height: 10.0),
                renderEmail(),
                renderPhoneNumber(),
                renderGithubProfile(),
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
  return Card(
    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
    color: Colors.deepPurple[300],
    child: ListTile(
      leading: Icon(
        Icons.email,
        color: Colors.amber[300]
      ),
      title: Text(
        'leo.a.rubiano@gmail.com',
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Quicksand',
          fontSize: 22.0,
        ),
      ),
    ),
  );
}

Widget renderPhoneNumber() {
  return Card(
    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
    color: Colors.deepPurple[300],
    child: ListTile(
      leading: Icon(
        Icons.phone,
        color: Colors.amber[300]
      ),
      title: Text(
        '781-428-0644',
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Quicksand',
          fontSize: 22.0,
        ),
      ),
    ),
  );
}

Widget renderGithubProfile() {
  return Card(
    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
    color: Colors.deepPurple[300],
    child: ListTile(
      leading: Icon(
        Icons.code,
        color: Colors.amber[300]
      ),
      title: Text(
        'github.com/leofofeo',
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Quicksand',
          fontSize: 22.0,
        ),
      ),
    ),
  );
}