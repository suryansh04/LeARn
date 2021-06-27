import 'package:educationapp/constant.dart';
import 'package:educationapp/earth.dart';
import 'package:educationapp/magnet.dart';
import 'package:educationapp/volcano.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Mars.dart';
import 'cell.dart';
import 'bulb.dart';
// import 'uName.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({this.namePass});
  final namePass;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  dynamic value;
  dynamic name;
  @override
  void initState() {
    super.initState();
    _save(widget.namePass).then((_) {
      _read();
    });
    // print(widget.namePass);
  }

  _save(String n) async {
    final prefs = await SharedPreferences.getInstance();

    prefs.setString('nUser', n);
    // print('The data is stored');
    // return 'saved';
  }

  _read() async {
    final prefs = await SharedPreferences.getInstance();
    value = prefs.getString('nUser') ?? 'not set';
    setState(() {
      name = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200.0,
              width: 500.0,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Hello,  \n$name',
                  style: GoogleFonts.pacifico(
                    letterSpacing: 2.0,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.teal,
                image: DecorationImage(
                  image: AssetImage('assets/check.png'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(40.0),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Learn',
                style: GoogleFonts.pacifico(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 25.0,
                  letterSpacing: 0.5,
                ),
              ),
            ),
            Flexible(
              child: ListView(
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25.0, vertical: 15.0),
                      child: IconCard(
                          bordercol: Colors.teal,
                          img: 'assets/earth.png',
                          text: 'Earth',
                          pass: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Earth()
                                    ),
                                    );
                          },
                          ),
                          ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25.0, vertical: 15.0),
                    child: IconCard(
                        bordercol: Colors.deepPurple[500],
                        img: 'assets/cell.png',
                        text: 'Cell',
                        pass: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Cell()
                                    ),
                              
                                    );
                          }, 
                    ),                
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25.0, vertical: 15.0),
                    child: IconCard(
                        bordercol: Colors.orange[600],
                        img: 'assets/volcano.png',
                        text: 'Volcano',
                           pass: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Volcano()
                                    ),
                                    );
                          },
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25.0, vertical: 15.0),
                    child: IconCard(
                        bordercol: Colors.yellow[500],
                        img: 'assets/idea.png',
                        text: 'Bulb',
                             pass: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Bulb()
                                    ),
                                    );
                          },
                        ),
                        
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25.0, vertical: 15.0),
                    child: IconCard(
                        bordercol: Colors.red[700],
                        img: 'assets/mars.png',
                        text: 'Mars',
                            pass: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                 builder: (context) => Mars()
                                ),
                               );
                          },
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25.0, vertical: 15.0),
                    child: IconCard(
                        bordercol: Colors.blue,
                        img: 'assets/magnet.png',
                        text: 'Magnet',
                     
                         pass: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                 builder: (context) => Magnet()
                                ),
                               );
                          },
                          
                        ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
