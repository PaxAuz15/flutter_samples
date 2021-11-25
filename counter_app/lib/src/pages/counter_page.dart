import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {

  @override
  createState()=> _CounterPageState();

}

class _CounterPageState extends State<CounterPage> {

  final TextStyle _styleText = const TextStyle(fontSize: 25);
  int _valueCounter = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tittle",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Click numbers:",
              style: _styleText,
            ),
            Text(
              "$_valueCounter",
              style: _styleText,
            )
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){
          setState(() {
            _valueCounter++;            
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
    // throw UnimplementedError();
  }

}