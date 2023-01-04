import 'package:flutter/material.dart';

Color activcolor = Colors.green;
Color dactivcolor = Color(0xff0b93ac);
Color wactivcolor = Colors.redAccent;

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int scor = 0;
  int i = 0;

  List<Map> question = [
    {
      'id': "01",
      'que': '''What is Flutter?''',
      'A': "DBMS",
      'B': "UI toolkit",
      'C': "backend toolkit",
      'D': "All of the above",
      'answer': "UI toolkit",
    },
    {
      'id': "02",
      'que': '''Flutter is developed by ________.''',
      'A': "Microsoft",
      'B': "Facebook",
      'C': "Google",
      'D': "IBM",
      'answer': "Google",
    },
    {
      'id': "03",
      'que':
          "Flutter is mainly optimized for _________ that can run on both Android and iOS platforms.",
      'A': "2D mobile apps",
      'B': "Desktop only",
      'C': "Tablet only",
      'D': "None of the above",
      'answer': "2D mobile apps",
    },
    {
      'id': "04",
      'que': "What are the best editors for Flutter development?",
      'A': "Android Studio",
      'B': "IntelliJ IDEA",
      'C': "Visual Studio",
      'D': "All of the above",
      'answer': "All of the above",
    },
    {
      'id': "05",
      'que': "How many types of widgets are there in Flutter?",
      'A': "2",
      'B': "4",
      'C': "3",
      'D': "5",
      'answer': "2",
    },
    {
      'id': "06",
      'que': "What are the advantages of Flutter?",
      'A': "Cross-platform",
      'B': "Fast Development",
      'C': "UI Focused",
      'D': "All of the above",
      'answer': "All of the above",
    },
    {
      'id': "07",
      'que': "What are the different build modes in Flutter?",
      'A': "Debug",
      'B': "Profile",
      'C': "Release",
      'D': "All of the above",
      'answer': "All of the above",
    },
    {
      'id': "08",
      'que':
          "The ________ widget in Flutter is a box that comes with a specified size.",
      'A': "Container",
      'B': "Stream",
      'C': "Show",
      'D': "SizedBox",
      'answer': "SizedBox",
    },
    {
      'id': "09",
      'que': "__________ are some popular apps that use Flutter.",
      'A': "Google Ads",
      'B': "Birch Finance",
      'C': "Alibaba",
      'D': "All of the above",
      'answer': "All of the above",
    },
    {
      'id': "10",
      'que': " What are the best editors for Flutter development?",
      'A': "Android Studio",
      'B': "IntelliJ IDEA",
      'C': "Visual Studio",
      'D': "All of the above",
      'answer': "All of the above",
    },
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    TextStyle mytextstyle = TextStyle(
      fontSize: 18,
      color: Colors.black,
    );

    BoxDecoration buttondecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      gradient: LinearGradient(
        colors: [
          Color(0xfff46b45),
          Color(0xffeea849),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      shape: BoxShape.rectangle,
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff005c97),
        title: Text(
          "KBC GAME",
          style: TextStyle(
            fontSize: 24,
            letterSpacing: 4,
          ),
        ),
        elevation: 0,
        leading: Icon(Icons.account_circle),
        actions: [
          Icon(Icons.savings_outlined),
          SizedBox(
            width: size.width * 0.03,
          ),
        ],
      ),
      body: IndexedStack(
        alignment: Alignment.center,
        index: i,
        children: question.map((e) {
          return Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(10),
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
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${i + 1}/10",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                              ),
                            ),
                            Text(
                              "Score : ${scor}",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.center,
                                height: size.height * 0.12,
                                width: size.width * 0.14,
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xfff46b45),
                                      Color(0xffeea849),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                                child: Text(
                                  "${e['id']}",
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.03,
                            ),
                            Expanded(
                              flex: 5,
                              child: Text(
                                '''${e['que']}''',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Color(0xffeea849),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xfff2fcfe),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(60),
                    ),
                  ),
                  child: Column(
                    children: [
                      Spacer(),
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    compiler(
                                        op: "${e['A']}",
                                        ans: "${e['answer']}",
                                        e: e);
                                  });
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: size.height * 0.08,
                                  width: size.width,
                                  decoration: buttondecoration,
                                  child: Text(
                                    "${e['A']}",
                                    style: mytextstyle,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.03,
                            ),
                            Expanded(
                              flex: 2,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    compiler(
                                        op: "${e['B']}",
                                        ans: "${e['answer']}",
                                        e: e);
                                  });
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: size.height * 0.08,
                                  width: size.width,
                                  decoration: buttondecoration,
                                  child: Text(
                                    "${e['B']}",
                                    style: mytextstyle,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    compiler(
                                        op: "${e['C']}",
                                        ans: "${e['answer']}",
                                        e: e);
                                  });
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: size.height * 0.08,
                                  width: size.width,
                                  decoration: buttondecoration,
                                  child: Text(
                                    "${e['C']}",
                                    style: mytextstyle,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.03,
                            ),
                            Expanded(
                              flex: 2,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    compiler(
                                        op: "${e['D']}",
                                        ans: "${e['answer']}",
                                        e: e);
                                  });
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: size.height * 0.08,
                                  width: size.width,
                                  decoration: buttondecoration,
                                  child: Text(
                                    "${e['D']}",
                                    style: mytextstyle,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                (i < 9)
                                    ? i++
                                    : Navigator.of(context).pushNamed(
                                        'scorepage',
                                        arguments: scor);
                              });
                            },
                            child: Text(
                              "Skip",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xff005c97)),
                              fixedSize: MaterialStateProperty.all(
                                Size(size.width * 0.3, size.height * 0.06),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {});
                            },
                            child: Text(
                              "Lifeline",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xff005c97)),
                              fixedSize: MaterialStateProperty.all(
                                Size(size.width * 0.3, size.height * 0.06),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          );
        }).toList(),
      ),
      backgroundColor: Color(0xff097094),
    );
  }

  void compiler({
    required Map e,
    required String op,
    required String ans,
  }) {
    if (op == ans) {
      int a = 1;
      final Map<dynamic, int> loket = {
        'id': i,
        'K': a,
      };
      (i < 9)
          ? Navigator.of(context).pushNamed('answerpage', arguments: loket)
          : Navigator.of(context).pushNamed('scorepage', arguments: scor);

      scor += 10;
      (i < 10)
          ? i++
          : Navigator.of(context).pushNamed('scorepage', arguments: scor);
    } else {
      int a = 2;
      final Map<dynamic, int> loket = {
        'id': i,
        'K': a,
      };(i < 9)
          ? Navigator.of(context).pushNamed('answerpage', arguments: loket)
          : Navigator.of(context).pushNamed('scorepage', arguments: scor);
      (scor == 0) ? scor = 0 : scor -= 10;
      (i < 10)
          ? i++
          : Navigator.of(context).pushNamed('scorpage', arguments: scor);
    }
  }
}
