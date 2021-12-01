import 'package:flutter/services.dart' show rootBundle;

import 'dart:convert';

class _MenuProvider {
  
  List<dynamic> options = [];

  _MenuProvider(){
    loadData();
  }

  void loadData() async {
    final data = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(data);
    print(dataMap['rutas']);
    options = dataMap['rutas'];    // return data;
    // loadData(){
    //   rootBundle.loadString('data/menu_opts.json').then((data) => print(data));
    // }
  }
}

final menuProvider = _MenuProvider();