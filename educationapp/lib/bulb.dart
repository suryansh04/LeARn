import 'package:educationapp/cell.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Screen.dart';
import 'package:flutter/material.dart';
import 'info.dart';
class Bulb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Screen(
      heading: 'Bulb',
      info: information.data(3),
      colFir: 0xFFf53803,
      colSec: 0xFFf5d020,
      colBar: 0xFFf5d020,
      buttonColFir: 0xffDC281E,
      buttonColSec: 0xffF00000,
      back:(){
Navigator.pop(context);
      },
 buttonPress:() async {
   const url = 'https://go.echoar.xyz/V1W7';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
},
      );
  }
}