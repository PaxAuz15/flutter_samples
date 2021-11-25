import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  createState() => _CounterPageState();
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
      )),
      floatingActionButton: _createButtons(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
    // throw UnimplementedError();
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
          onPressed: _reset,
          child: const Icon(Icons.exposure_zero),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        FloatingActionButton(
          onPressed: _subtract,
          child: const Icon(Icons.remove),
        ),
        const SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          onPressed: _add,
          child: const Icon(Icons.add),
        ),
      ],
    );
  }

  void _subtract() => setState(() => _valueCounter--);
  void _reset(){
    setState(() => _valueCounter=0);
  }
  void _add() {
    setState(() => _valueCounter++);
  }
}
