import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final TextStyle styleText = const TextStyle(fontSize: 25);

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
              "0",
              style: styleText,
            )
          ],
        )
      ),
    );
    // throw UnimplementedError();
  }
}