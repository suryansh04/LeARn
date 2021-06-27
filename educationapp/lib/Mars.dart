import 'package:educationapp/cell.dart';
import 'Screen.dart';
import 'package:flutter/material.dart';
import 'info.dart';
import 'package:url_launcher/url_launcher.dart';
class Mars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Screen(
      heading: 'Mars',
      info: information.data(4),
      colFir: 0xFFfe0944,
      colSec: 0xFF990000,
      colBar: 0xFF990000,
      buttonColFir:0xffBD3F32,
      buttonColSec: 0xffCB356B,
      buttonPress:() async {
   const url = 'https://go.echoar.xyz/V1W7';
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

