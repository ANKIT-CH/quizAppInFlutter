import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int tscore;
  final Function resetter;

  Result(this.tscore, this.resetter);

  String get resultPhrase {
    String phrase;
    if (tscore <= 8)
      phrase = 'you are bad';
    else if (tscore <= 15)
      phrase = 'you are ....';
    else
      phrase = 'you are awesome';

    return phrase;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'RESET',
            ),
            textColor: Colors.red,
            onPressed: resetter,
          ),
        ],
      ),
    );
  }
}
