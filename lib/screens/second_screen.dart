import 'package:flutter/material.dart';
import 'package:quizland/components/constants.dart';
import 'package:quizland/components/custom_textbutton.dart';
import 'package:quizland/components/question_list.dart';

import '../components/indicator_column.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  Questionlist ql = Questionlist();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: kActiveColor,
              ),
            ),
            IndicatorColumn(ql: ql),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 25, horizontal: 10),
                    child: Text(ql.getQuestion(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 30)),
                  ),
                  CustomTextButton(
                      label: ql.getOption1(),
                      onTap: () {
                        setState(() {
                          ql.getOption1() == ql.getAnswer()
                              ? ql.updateScore()
                              : null;
                          ql.nextQuestion(context);
                        });
                      }),
                  CustomTextButton(
                      label: ql.getOption2(),
                      onTap: () {
                        setState(() {
                          ql.getOption2() == ql.getAnswer()
                              ? ql.updateScore()
                              : null;
                          ql.nextQuestion(context);
                        });
                      }),
                  CustomTextButton(
                      label: ql.getOption3(),
                      onTap: () {
                        ql.getOption3() == ql.getAnswer()
                            ? ql.updateScore()
                            : null;
                        setState(() {
                          ql.nextQuestion(context);
                        });
                      }),
                  CustomTextButton(
                      label: ql.getOption4(),
                      onTap: () {
                        ql.getOption4() == ql.getAnswer()
                            ? ql.updateScore()
                            : null;
                        setState(() {
                          ql.nextQuestion(context);
                        });
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
