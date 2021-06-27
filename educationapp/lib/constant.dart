import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var cardStyle = GoogleFonts.pacifico(
  fontSize: 20.0,
  fontWeight: FontWeight.w500,
);

var screenStyle = GoogleFonts.pacifico(
  color: Colors.white,
  fontSize: 40.0,
  fontWeight: FontWeight.w400,
);

var paraStyle = GoogleFonts.sourceSansPro(
  color: Colors.white,
  fontSize: 20.0,
  fontWeight: FontWeight.w300,
);

class IconCard extends StatelessWidget {
  final img;
  final bordercol;
  final text;
  final boxColor;
  final Function pass;
  IconCard({this.img, this.bordercol, this.text,this.pass,this.boxColor});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pass,
      child: Container(
        width: 300.0,
        child: Card(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: bordercol, width: 3),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: ListTile(
                leading: Image(image: AssetImage(img)),
                title: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: cardStyle,
                  ),
                ),
                trailing: Icon(Icons.chevron_right),
              ),
            )),
      ),
    );
  }
}




 