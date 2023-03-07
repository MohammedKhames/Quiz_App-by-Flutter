import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer(this.x, this.answerText, {Key? key}) : super(key: key);

  final String answerText;
  final Function() x;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      width: 250,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(

                  primary: Color.fromARGB(255, 65, 224, 70),
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(bottomRight:Radius.circular(30),
                    topRight:Radius.circular(30) ),
                  ),),
          onPressed: x,
          child: Text(
            answerText,
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
