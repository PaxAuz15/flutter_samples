import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Page")
      ),
      body: ListView(
        padding: const EdgeInsets.all(15.0),
        children: [
          _card(),
          const SizedBox(height: 10.0,),
          _imageCard(),
          const SizedBox(height: 10.0,),
          _card(),
          const SizedBox(height: 10.0,),
          _imageCard(),
          const SizedBox(height: 10.0,),
          _card(),
          const SizedBox(height: 10.0,),
          _imageCard(),
          const SizedBox(height: 10.0,),
          _card(),
          const SizedBox(height: 10.0,),
          _imageCard(),
          const SizedBox(height: 10.0,),
          _card(),
          const SizedBox(height: 10.0,),
          _imageCard(),
          const SizedBox(height: 10.0,),
        ],
      ),
    );
  }

  Widget _card() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
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
    final card =  Container(
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

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0) ,
          )
        ],
      ),
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }
}