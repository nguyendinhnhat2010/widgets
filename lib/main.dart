import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  int number1 = 0, number2 = 0;

  @override
  // void initState() {
  //   super.initState();
  // }

  void _ranDomNumber(){
    setState(() {
      Random r = new Random();
      number1 = r.nextInt(6);
      number2 = r.nextInt(6);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Random Number',
            style: TextStyle(fontSize: 18, color: Colors.grey,),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(number1.toString()+number2.toString()),
              FlatButton(
                child: Text('Random'),
                onPressed: _ranDomNumber,
                color: Colors.blue,
                textColor: Colors.white,
                )
            ],
          ),
        ),
      ),
    );
  }
}