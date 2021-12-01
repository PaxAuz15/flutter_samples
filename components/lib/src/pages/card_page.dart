import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Page")
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          _card()
        ],
      ),
    );
  }

  Widget _card() {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album,color: Colors.blue,),
            title: Text("Title from Card"),
            subtitle: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: (){},
                child: const Text("Cancel")
              ),
              TextButton(
                onPressed: (){},
                child: const Text("OK")
              )
            ],
          )
        ],
      ), 
    );
  }
}