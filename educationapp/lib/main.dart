import 'package:educationapp/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
// import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(runIt());
}

class runIt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:startingScreen(),
   
    );
  }
}

class startingScreen extends StatefulWidget {
  @override
  _startingScreenState createState() => _startingScreenState();
}

String username = '';
String saved = '';

class _startingScreenState extends State<startingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            ClipPath(
              clipper: WaveClipperTwo(),
              child: Container(
                height: 270,
                color: Colors.teal,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Enter your name',
                    style: GoogleFonts.pacifico(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  TextField(
                    onChanged: (value) => username = value,
                    decoration: InputDecoration(
                      hintText: 'Full Name',
                      hintStyle: GoogleFonts.openSans(),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomeScreen(namePass: username);
                      },
                      ),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Done',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.openSans(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)],
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
