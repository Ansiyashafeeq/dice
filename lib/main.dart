import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


    int i=1;
    int j=1;
    void di(){
      i=Random().nextInt(6)+1;
      j=Random().nextInt(6)+1;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(

        body:
        Container(

          child: Center(
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: (){
      setState((){
        di();


      });},
                  child: Expanded(
                    child: Container(

                      height: 150,

                      child: Image(image: AssetImage('assets/dice$j.png'),fit: BoxFit.cover,),
                    ),
                  ),
                ),
                TextButton( onPressed: (){
                  setState((){
                   di();

                  });
                },
                  child: Expanded(
                    child: Container(

                      height:150,
                      child: Image(image: AssetImage('assets/dice$i.png'),fit: BoxFit.cover,),
                    ),
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
