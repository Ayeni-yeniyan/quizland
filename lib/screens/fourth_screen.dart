import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../components/constants.dart';
import '../components/custom_textbutton.dart';
import '../components/indicator_column.dart';
import '../components/question_list.dart';
import 'second_screen.dart';

class FourthScreen extends StatefulWidget {
  const FourthScreen({super.key});

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
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
                      customTextButtonColor: kCorrect,
                      label: ql.getAnswer(),
                      onTap: () {
                        Clipboard.setData(ClipboardData(
                            text:
                                'The answer to this question: ${ql.getQuestion()}, is ${ql.getAnswer()}.'));
                      }),
                  const SizedBox(height: 100),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Visibility(
                        visible: ql.getQuestionNumber() > 0,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: kActiveColor,
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            textStyle: const TextStyle(fontSize: 25),
                          ),
                          onPressed: () {
                            setState(() {
                              ql.previousQuestion();
                            });
                          },
                          child: const Text('PREVIOUS'),
                        ),
                      ),
                      Visibility(
                        visible: ql.getQuestionNumber() < 19,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: kActiveColor,
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            textStyle: const TextStyle(fontSize: 25),
                          ),
                          onPressed: () {
                            setState(() {
                              ql.nextQuestion(context);
                            });
                          },
                          child: const Text('NEXT'),
                        ),
                      ),
                    ],
                  ),
                  Visibility(
                    visible: ql.getQuestionNumber() == 19,
                    child: CustomTextButton(
                        label: 'restart quiz',
                        onTap: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SecondScreen()));
                          });
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
