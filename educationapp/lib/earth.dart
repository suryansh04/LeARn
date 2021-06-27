import 'package:educationapp/cell.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Screen.dart';
import 'package:flutter/material.dart';
import 'info.dart';
class Earth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Screen(
      heading: 'Earth',
      info:information.data(0),
      colFir: 0xFF2193b0,
      colSec: 0xFF6dd5ed,
      colBar: 0xFF2193b0,
      buttonColFir: 0xff005C97,
      buttonColSec: 0xff005C97,
      back:(){
Navigator.pop(context);
      },
      buttonPress: () async {
   const url = 'https://go.echoar.xyz/LmLs';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
},
      );
  }
}
