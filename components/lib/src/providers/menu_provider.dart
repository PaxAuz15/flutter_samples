import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  
  List<dynamic> options = [];

  _MenuProvider(){
    loadData();
  }

  void loadData() async {
    String data = await rootBundle.loadString('data/menu_opts.json');
    print(data);
    // return data;
    // loadData(){
    //   rootBundle.loadString('data/menu_opts.json').then((data) => print(data));
    // }
  }
}

final menuProvider = _MenuProvider();