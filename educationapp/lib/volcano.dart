import 'package:educationapp/cell.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Screen.dart';
import 'package:flutter/material.dart';
import 'info.dart';
class Volcano extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Screen(
      heading: 'Volcano',
      info:information.data(2),
      colFir: 0xFFE94057,
      colSec: 0xFFF27121,
         colBar:0xFFE94057,
         buttonColFir: 0xffBD3F32,
         buttonColSec: 0xffBD3F32,
         buttonPress: () async{
        
      },
     back:(){
Navigator.pop(context);
      }
      );
  }
}
