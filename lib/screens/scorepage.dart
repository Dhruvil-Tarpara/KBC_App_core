import 'package:flutter/material.dart';

class Scorepage extends StatefulWidget {
  const Scorepage({Key? key}) : super(key: key);

  @override
  State<Scorepage> createState() => _ScorepageState();
}

class _ScorepageState extends State<Scorepage> {

  String? text;
  String? result;
  String? image;
  String? text2;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    int Scor = ModalRoute.of(context)!.settings.arguments as int;
    board(s: Scor);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff005c97),
        title: Text("Score Board",),
      ),
      body: Center(
          child: Container(
            height: size.height,
            width: size.width,
              decoration : BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff005c97),
                    Color(0xff097094),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: size.height * 0.7,
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xfff46b45),
                        Color(0xffeea849),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                   ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Your Score is ${Scor}",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 28,
                      ),),
                      Text('${text}',style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                      ),),
                      Text("${result}",style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                      ),),
                      Image(image: AssetImage("${image}"),),
                      Text("${text2}...",style: TextStyle(
                        color: Color(0xff005c97),
                        fontSize: 24,
                      ),),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.pushNamed(context,"gamepage");
                    });
                  },
                  child: Text(
                    "Play Again",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color(0xfff46b45)),
                    fixedSize: MaterialStateProperty.all(
                      Size(size.width * 0.4, size.height * 0.08),
                    ),
                    shape: MaterialStateProperty.all(
                      ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                    ),
                    ),
                ),
              ],
            ),
          ),
      ),
    );
  }
  void board({required int s}) {

    if (s >= 70) {
      text = "Congratulations...";
      image = "images/phone.png";
      result = "You have won the game";
      text2 = "Collect your gift";
    } else if(s <= 30) {
      text = "oops!";
      image = "images/lose.png";
      result = "Sorry You are the lose";
      text2 = "Bad luck";
    }
    else
      {
        text = "oops!";
        image = "images/laptop.png";
        result = "Sorry You are the lose";
        text2 = "Collect your gift";
      }
  }
}
