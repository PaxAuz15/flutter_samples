import 'package:flutter/material.dart';

import 'package:components/src/pages/home_page.dart';
import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/pages/avatar_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Components App',
      initialRoute: "/",
      routes: <String,WidgetBuilder>{
        "/"     : (context) => HomePage(),
        "alert" : (context) => AlertPage(),
        "avatar": (context) => AvatarPage(),
      },
    );
  }
}