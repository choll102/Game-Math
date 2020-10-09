import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:math_puzzle_1/scenes/game.dart';
import 'package:math_puzzle_1/utils/constants.dart';


class HomeScene extends StatefulWidget {

  final Image logo = new Image.asset("assets/Logo.png");
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<HomeScene> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(children: <Widget>[
        Scaffold(
            backgroundColor: Constants.BACKGROUND_COLOR,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(50),
                      child: Container(alignment: Alignment.topCenter, height: 200, width: 200, child: widget.logo),
                    ),
                    Padding(
                        padding: EdgeInsets.all(0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => GameScene(Constants.PLUS)),
                            );
                          },
                          child: new Container(
                            child: Center(
                              child: Text(
                                "ĐỐ PHÉP CỘNG ",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Constants.TRANSPARENT_WHITE),
                              ),
                            ),
                            width: 300,
                            height: 50,
                            decoration: BoxDecoration(color: Colors.deepPurple, borderRadius: BorderRadius.all(Radius.circular(15.0))),
                          ),
                        )),
                    Padding(
                        padding: EdgeInsets.only(top: 25),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => GameScene(Constants.MULT)),
                            );
                          },
                          child: new Container(
                            child: Center(
                              child: Text(
                                "ĐỐ PHÉP NHÂN",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Constants.TRANSPARENT_WHITE),
                              ),
                            ),
                            width: 300,
                            height: 50,
                            decoration: BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.all(Radius.circular(15.0))),
                          ),
                        )),
                  ]),
                ],
              ),
            )),
      ]),
    );
  }
}
