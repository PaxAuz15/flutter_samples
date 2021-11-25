import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tittle",
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "Hola Mundo"
        ),
      ),
    );
    // throw UnimplementedError();
  }
}