import 'package:flutter/material.dart';

class Answerpage extends StatefulWidget {
  const Answerpage({Key? key}) : super(key: key);

  @override
  State<Answerpage> createState() => _AnswerpageState();
}

class _AnswerpageState extends State<Answerpage> {
  String? text;
  String? result;
  String? image;
  int price = 1000;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Map data = ModalRoute.of(context)!.settings.arguments as Map;
    ans(i: data['K'],d: data['id'],);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff005c97),
        elevation: 0,
      ),
      body: Container(
        alignment: Alignment.center,
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          color: Color(0xff005c97),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
              child: Image(
                image: AssetImage("$image"),
                fit: BoxFit.cover,
              ),
            ),
            Text(
              "$text",
              style: TextStyle(
                color: Color(0xffeea849),
                fontSize: 22,
              ),
            ),
            Text(
              "$result",
              style: TextStyle(
                color: Color(0xfff46b45),
                fontSize: 22,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if(data['id'] <= 9)
                      { Navigator.of(context).pop(); price+=10000;}
                  else
                      { Navigator.of(context).pushNamed("scorepage"); }
                });
              },
              child: Text(
                "Next",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xfff46b45)),
                fixedSize: MaterialStateProperty.all(
                  Size(size.width * 0.3, size.height * 0.06),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void ans({required int i, required int d, }) {

    if ( i == 1) {
      text = "Your Answer is Correct";
      image = "images/won.png";
      result = "You Won ${price}";
    } else {
      text = "oops!";
      image = "images/lose.png";
      result = "Sorry You are the lose";
    }
  }
}
