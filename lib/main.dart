import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kbc/screens/answerpage.dart';
import 'package:kbc/screens/gamepage.dart';
import 'package:kbc/screens/scorepage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => mainpage(),
        'gamepage': (context) => homepage(),
        'answerpage' : (context) => Answerpage(),
        'scorepage': (context) => Scorepage(),
      },
    ),
  );
}

class mainpage extends StatefulWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff005c97),
                  Color(0xff097094),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Spacer(
                flex: 2,
              ),
              ClipOval(
                clipBehavior: Clip.antiAlias,
                child: Image(
                  image: AssetImage("images/logo.png"),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.of(context).pushNamed('gamepage');
                  });
                },
                child: Text(
                  "START",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    letterSpacing: 4,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xffeea849)),
                  fixedSize: MaterialStateProperty.all(
                    Size(size.width * 0.4, size.height * 0.08),
                  ),
                  shape: MaterialStateProperty.all(
                    ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                  ),
                ),
              ),
              Spacer(
                flex: 4,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
