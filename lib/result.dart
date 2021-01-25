import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

//Remark Logic
  String get resultPhrase {
    String resultText;
    if (resultScore >= 41) {
      resultText = 'You are awesome!';
      print(resultScore);
    } else if (resultScore >= 31) {
      resultText = 'Pretty likeable!';
      print(resultScore);
    } else if (resultScore >= 21) {
      resultText = 'You need to work more!';
    } else if (resultScore >= 1) {
      resultText = 'You need to work hard!';
    } else {
      resultText = 'This is a poor score!';
      print(resultScore);
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromRGBO(46, 29, 95, 1),
        child: Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'DONE!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'BlackHanSans',
                  fontSize: 28,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Divider(
                color: Colors.indigo,
                height: 20,
              ),
              Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/Result.png'),
                          fit: BoxFit.fitWidth))),

              Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        offset: Offset(0, 4),
                        blurRadius: 4)
                  ],
                  color: Color.fromRGBO(90, 55, 188, 1),
                  border: Border.all(
                    color: Colors.white70,
                    width: 1,
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 22, vertical: 7),
                margin: const EdgeInsets.all(40),
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text('Score: ' '$resultScore',
                          style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'BlackHanSans',
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                          textAlign: TextAlign.center),
                    ],
                  ),
                ), //RaisedButton
              ),
              Text(
                resultPhrase,
                style: TextStyle(
                    fontFamily: 'BlackHanSans',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ), //Text
              //Text
            ], //<Widget>[]
          ), //Column
        )); //Center
  }
}
