import 'Screen.dart';
import 'package:flutter/material.dart';
import 'info.dart';
import 'package:url_launcher/url_launcher.dart';

  Info information = Info();
class Magnet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Screen(
      heading: 'Magnet',
      info: information.data(5),
      colFir: 0xFF647dee,
      colSec: 0xFF7f53ac,
    colBar: 0xFF647dee,
    buttonColFir:0xff200122,
    buttonColSec: 0xff6f0000,
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
