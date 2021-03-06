import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final TextStyle styleText = const TextStyle(fontSize: 25);
  final int valueCounter = 10;

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
              "Numbers click:",
              style: styleText,
            ),
            Text(
              "$valueCounter",
              style: styleText,
            )
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){
          print("Hola Mundo");
          // valueCounter = valueCounter + 1;
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
    // throw UnimplementedError();
  }
}