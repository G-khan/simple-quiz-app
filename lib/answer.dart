import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
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
        color: Color.fromRGBO(46, 29, 95, 1),
        border: Border.all(
          color: Color.fromRGBO(90, 55, 188, 1),
          width: 2,
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 7),
      margin: const EdgeInsets.all(4),
      child: RaisedButton(
        color: Color.fromRGBO(46, 29, 95, 1),
        textColor: Colors.white,
        padding: const EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(answerText,
                textAlign: TextAlign.left,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Josefin Sans',
                  fontSize: 14,
                )),
          ],
        ),
        onPressed: selectHandler,
      ), //RaisedButton
    ); //Container
  }
}
/**
 *       // Figma Flutter Generator Answer1Widget - FRAME - HORIZONTAL
      Container(
      decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
      boxShadow : [BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.25),
          offset: Offset(0,4),
          blurRadius: 4
      )],
      color : Color.fromRGBO(46, 29, 95, 1),
      border : Border.all(
          color: Color.fromRGBO(90, 55, 188, 1),
          width: 2,
        ),
  ),
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 7),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        
        children: <Widget>[
          Text('If you could spend a day with anyone, whom would you choose?',),

        ],
      ),
    )
 */

// Figma Flut
