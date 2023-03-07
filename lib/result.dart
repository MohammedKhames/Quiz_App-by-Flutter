import 'package:flutter/material.dart';
import 'main.dart';

class Result extends StatelessWidget {
  const Result(this.holder, this.resultScore, {Key? key}) : super(key: key);

  final Function() holder;
  final int resultScore;

  String get resultPhrase {
    String resultText = '';
    if (resultScore >= 40) {
      resultText = 'Awesome!';
    } else if (resultScore >= 30) {
      resultText = 'Pretty likable!';
    } else {
      resultText = 'So bad!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [

          Text(
            'Total Score = $resultScore',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: isSwitched == false ? Colors.black : Colors.white,
            ),
          ),
          SizedBox(height: 20,),
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: isSwitched == false ? Colors.black : Colors.white,
            ),
          ),
          SizedBox(height: 20,),
          Container(
            color: Colors.green,
            child: TextButton(

              onPressed: holder,
              child: const Text(
                'Restart',
                style: TextStyle(color: Colors.white,
                  fontSize: 20,
                  //fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
