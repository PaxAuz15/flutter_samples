import 'package:components/src/providers/menu_provider.dart';
import 'package:components/src/utils/icon_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Components Theme"),
        centerTitle: true,
      ),
      body: _list(),
    );
  }

  Widget _list() {
    // menuProvider.loadData();

    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listItems(data: snapshot.data),
        );
      },
    );
  }

  List<Widget> _listItems({List<dynamic>? data}) {
    List<Widget> options = [];
    
    data!.forEach((element) {
      final widgetTemp = ListTile(
        title: Text(element["texto"]),
        leading: getIcon(element["icon"]),
        trailing: const Icon(Icons.keyboard_arrow_right,color: Colors.blue,),
        onTap: (){},
      );

      options..add(widgetTemp)
             ..add(const Divider());
    });
    return options;
  }
}
