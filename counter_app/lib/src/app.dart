import 'package:flutter/material.dart';

import 'package:counter_app/src/pages/counter_page.dart';
// import 'package:counter_app/src/pages/home_page.dart';


class MyApp extends StatelessWidget{
  
  @override
  Widget build(context){
    return MaterialApp(
      debugShowCheckedModeBanner: false, //Debug banner off
      home: Center(
        child: CounterPage(),
      )
    );
  }
}