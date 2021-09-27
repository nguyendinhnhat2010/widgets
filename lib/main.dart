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
  luckyNumber(){
    var randomnumber = "";
    var number1 = Random();
    var number2 = Random();
    for (int i = 0; i < 6; i++) {
      randomnumber = randomnumber + "  " + number1.nextInt(max(0, 6)).toString() + number2.nextInt(max(0, 6)).toString();
    }
    return randomnumber;
  }
  String randomNum = "Random 6 number";
  ranDomNumber(){
    setState(() {
      randomNum = "Random 6 number : ${luckyNumber()}";
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
              Text(randomNum),
              FlatButton(
                child: Text('Random'),
                onPressed: ranDomNumber,
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