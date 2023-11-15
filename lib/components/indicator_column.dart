import 'package:flutter/material.dart';

import 'question_indicator.dart';
import 'question_list.dart';

class IndicatorColumn extends StatelessWidget {
  const IndicatorColumn({
    super.key,
    required this.ql,
  });

  final Questionlist ql;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QuestionIndicator(
              questionIndicator: 1,
              questionNumber: ql.getQuestionNumber(),
            ),
            QuestionIndicator(
              questionIndicator: 2,
              questionNumber: ql.getQuestionNumber(),
            ),
            QuestionIndicator(
              questionIndicator: 3,
              questionNumber: ql.getQuestionNumber(),
            ),
            QuestionIndicator(
              questionIndicator: 4,
              questionNumber: ql.getQuestionNumber(),
            ),
            QuestionIndicator(
              questionIndicator: 5,
              questionNumber: ql.getQuestionNumber(),
            ),
            QuestionIndicator(
              questionIndicator: 6,
              questionNumber: ql.getQuestionNumber(),
            ),
            QuestionIndicator(
              questionIndicator: 7,
              questionNumber: ql.getQuestionNumber(),
            ),
            QuestionIndicator(
              questionIndicator: 8,
              questionNumber: ql.getQuestionNumber(),
            ),
            QuestionIndicator(
              questionIndicator: 9,
              questionNumber: ql.getQuestionNumber(),
            ),
            QuestionIndicator(
              questionIndicator: 10,
              questionNumber: ql.getQuestionNumber(),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QuestionIndicator(
              questionIndicator: 11,
              questionNumber: ql.getQuestionNumber(),
            ),
            QuestionIndicator(
              questionIndicator: 12,
              questionNumber: ql.getQuestionNumber(),
            ),
            QuestionIndicator(
              questionIndicator: 13,
              questionNumber: ql.getQuestionNumber(),
            ),
            QuestionIndicator(
              questionIndicator: 14,
              questionNumber: ql.getQuestionNumber(),
            ),
            QuestionIndicator(
              questionIndicator: 15,
              questionNumber: ql.getQuestionNumber(),
            ),
            QuestionIndicator(
              questionIndicator: 16,
              questionNumber: ql.getQuestionNumber(),
            ),
            QuestionIndicator(
              questionIndicator: 17,
              questionNumber: ql.getQuestionNumber(),
            ),
            QuestionIndicator(
              questionIndicator: 18,
              questionNumber: ql.getQuestionNumber(),
            ),
            QuestionIndicator(
              questionIndicator: 19,
              questionNumber: ql.getQuestionNumber(),
            ),
            QuestionIndicator(
              questionIndicator: 20,
              questionNumber: ql.getQuestionNumber(),
            ),
          ],
        ),
      ],
    );
  }
}
