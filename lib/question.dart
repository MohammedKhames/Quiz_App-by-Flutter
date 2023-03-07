import 'package:flutter/material.dart';
import 'main.dart';

class Question extends StatelessWidget {
  const Question(this.questionText, {Key? key}) : super(key: key);

  final String questionText;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
     decoration: BoxDecoration(
              color: Colors.white,

              border: Border.all(color: Colors.grey, width: 1)
                       /* Border(left:BorderSide(color: Colors.green,width: 10),
                               right:BorderSide(color: Colors.green,width: 10) )*/,

              borderRadius: BorderRadius.circular(30),),

      width: double.infinity,
      height: 80,
      margin: const EdgeInsets.all(15),
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: isSwitched == false ? Colors.green : Colors.green,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
