import 'package:flutter/material.dart';

import 'constants.dart';

class QuestionIndicator extends StatelessWidget {
  const QuestionIndicator(
      {super.key,
      required this.questionNumber,
      required this.questionIndicator});

  final int questionNumber;
  final int questionIndicator;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: questionIndicator == questionNumber + 1
            ? kActiveColor
            : kInactiveColor,
      ),
      child: Center(
        child: Text(
          questionIndicator.toString(),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
