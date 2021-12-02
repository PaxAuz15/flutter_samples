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
          _card(),
          const SizedBox(height: 10.0,),
          _imageCard(),
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

  Widget _imageCard() {
    return Card(
      child: Column(
        children: [
          const FadeInImage(
            placeholder: AssetImage("assets/jar-loading.gif"),
            image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg"),
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
          ),
          Container(
            child: const Text("Description Image"),
            padding: const EdgeInsets.all(10.0),
          )
        ],
      ),
    );
  }
}