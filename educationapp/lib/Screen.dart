import 'package:educationapp/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen extends StatelessWidget {
  final heading;
  final info;
  final colFir;
  final colSec;
  final colBar;
  final Function back;
  final buttonColFir;
  final buttonColSec;
  final Function buttonPress;
  Screen({
    @required this.heading,
    @required this.info,
    @required this.colFir,
    @required this.colSec,
    @required this.colBar,
    @required this.back,
    @required this.buttonColFir,
    @required this.buttonColSec,
    @required this.buttonPress,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(colBar),
        leading: BackButton(
          color: Colors.black,
          onPressed: back,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            width: 500.0,
            // height: 600.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(colFir), Color(colSec)],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(heading, style: screenStyle),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(info, style: paraStyle),
                ),
                GestureDetector(
                  onTap: buttonPress,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    //   height: 0.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(buttonColFir), Color(buttonColSec)],
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(40.0),
                      ),
                    ),
                    child: ListTile(
                      title: Text(
                        'See in AR',
                        style: GoogleFonts.pacifico(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                      leading: Image(
                        image: AssetImage('assets/mobile.png'),
                        height: 40.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


// \n