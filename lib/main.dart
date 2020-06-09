import 'package:flutter/material.dart';
import 'package:mitmischenevaschulze/home.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mitmischen am Eva Schulze',
      theme: ThemeData(
        primaryColor: Colors.indigo[900],
        accentColor: Colors.orange[800],
      ),
      home: Home(),
    );
  }
}
