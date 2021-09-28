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
      randomnumber = number1.nextInt(max(0, 6)).toString() + number2.nextInt(max(0, 6)).toString();
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
        backgroundColor: Colors.green[100],
        appBar: AppBar(
          title: const Center(
            child: Text('Random Number',
            style: TextStyle(
              fontSize: 18, 
              color: Colors.grey,),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < 5; i++)
                Container(
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(5.0),
                  decoration: myBoxDecoration(),
                  child: Text(
                    "${luckyNumber()}",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ],
              ),
              ElevatedButton(
                child: Text('Random'),
                onPressed: ranDomNumber,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  BoxDecoration myBoxDecoration(){
    return BoxDecoration(
      border: Border.all(color: Colors.red),
      borderRadius: BorderRadius.circular(50),
    );
  }
}