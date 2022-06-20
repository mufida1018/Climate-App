import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_climate/home_screen.dart';

void main(){
  runApp(Climate());
}

class Climate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
