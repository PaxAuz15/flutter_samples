import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final options = ['One','Two','Three','Four','Five'];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Components Theme"),
      ),
      body: ListView(
        children: _createItemsII()
      ),
    );
  }

  List<Widget> _createItems(){

    List<Widget> list = <Widget>[];

    for (String option in options) {
      final tempWidget = ListTile(
        title: Text(option),
      );

      list..add(tempWidget)
          ..add(const Divider());
    }
    return list;
  }

  List<Widget> _createItemsII(){
    
    var listItems = options.map((String option){
      return Column(
        children: [
          ListTile(
            title: Text(option),
            subtitle: const Text("Hello World"),
            leading: const Icon(Icons.ac_unit),
            trailing: const Icon(Icons.arrow_right),
            onTap: (){},
          ),
          const Divider()
        ],
      );
    }).toList();

    return listItems;
  }
}