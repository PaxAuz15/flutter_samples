import 'package:flutter/material.dart';

import 'package:components/src/pages/home_page.dart';
import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/pages/avatar_page.dart';

Map<String, Widget Function(BuildContext)> getRoute(){
  return <String,WidgetBuilder>{
        "/"     : (context) => HomePage(),
        "alert" : (context) => AlertPage(),
        "avatar": (context) => AvatarPage(),
  };
}