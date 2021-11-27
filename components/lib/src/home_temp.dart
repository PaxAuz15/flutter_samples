import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Components Theme"),
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text("List Tile Title"),
          ),
          Divider(),
          ListTile(
            title: Text("List Tile Title"),
          )
        ],
      ),
    );
  }
}