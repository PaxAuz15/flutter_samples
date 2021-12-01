import 'package:flutter/material.dart';

final mapIcons = <String,IconData>{
  "add_alert"     : Icons.add_alert,
  "accessibility" : Icons.accessibility,
  "folder_open"   : Icons.folder_open,
};

Icon getIcon(String icon){
  return Icon(mapIcons[icon],color: Colors.blue,);
}