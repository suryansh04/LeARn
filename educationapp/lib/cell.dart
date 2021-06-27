import 'Screen.dart';
import 'package:flutter/material.dart';
import 'info.dart';
import 'package:url_launcher/url_launcher.dart';


  Info information = Info();
class Cell extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Screen(
      heading: 'Cell',
      info: information.data(1),
      colFir: 0xFFad5389,
      colSec: 0xFF3c1053,
    colBar: 0xFFad5389,
    buttonColFir: 0xff2F0743,
    buttonColSec: 0xff41295a ,
    buttonPress: () async {
   const url = 'https://go.echoar.xyz/rGJR';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
},
      back:(){
Navigator.pop(context);
      }
    );
  }
}
