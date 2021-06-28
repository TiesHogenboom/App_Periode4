import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(
      title: 'Navigation Basics',
      home: FirstRoute(),
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFF263238))));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[800],
        // centerTitle: true,
        title: Container(
          child: Row(
            children: <Widget>[
              Icon(Icons.menu_outlined),
              Text(
                '               _add',
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Image.network(
              'https://i.imgur.com/HGtbASO.png',
              height: 500,
              width: 250,
              ),
            
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                      return Colors.green;
                    return (Colors.pink[700]); // Use the component's default.
                  },
                ),
              ),
              child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 80.0, vertical: 20.0),
                  child: Text(
                    'New Planner',
                    style: TextStyle(fontSize: 20),
                  )),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[800],
        // centerTitle: true,
        title: Container(
          child: Row(
            children: <Widget>[
              Text(
                '           _add',
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Image.network(
              'https://i.imgur.com/24cWZwQ.png',
              height: 500,
              width: 250,
              ),
                Text('Name planner:________',
                style: TextStyle(fontSize: 25, color: Colors.pink[800],
                )
                ),
              
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                      return Colors.green;
                    return (Colors.pink[700]); // Use the component's default.
                  },
                ),
              ),
              child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 80.0, vertical: 20.0),
                  child: Text(
                    'Add planner',
                    style: TextStyle(fontSize: 20),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

