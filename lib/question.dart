import 'package:flutter/material.dart';
import 'dart:math' as math;

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 375,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              child: Container(
                  width: 375,
                  height: 230,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(),
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Stack(children: <Widget>[
                    Positioned(
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 220,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(0),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              color: Color.fromRGBO(46, 29, 95, 1),
                            ))),
                    Positioned(
                        top: 57,
                        width: MediaQuery.of(context).size.width,
                        child: Container(
                            margin:
                                const EdgeInsets.only(left: 30.0, right: 30),
                            child: Text(
                              questionText,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'JosefinSans',
                                  fontSize: 17),
                            ))),
                    Positioned(
                        top: 120,
                        left: 260,
                        child: Transform.rotate(
                          angle: 17 * (math.pi / 180),
                          child: Container(
                              width: 146,
                              height: 147,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/Question2.png'),
                                    fit: BoxFit.fitWidth),
                              )),
                        )),
                  ]))),
        ]));
  }
}
