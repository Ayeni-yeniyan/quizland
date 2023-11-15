import 'package:flutter/material.dart';

import '../components/custom_textbutton.dart';
import '../screens/second_screen.dart';
import '../components/constants.dart';
import '../screens/fourth_screen.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key, required this.finalScore});

  final int finalScore;

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
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
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 150),
                  child: Text.rich(
                    textAlign: TextAlign.center,
                    TextSpan(
                      text: 'All done!\n'.toUpperCase(),
                      style: kMainTextStyle,
                      children: [
                        TextSpan(
                          text:
                              'You got ${widget.finalScore} out of all 20 questions correct.',
                          style: kSubTextStyle,
                        ),
                      ],
                    ),
                  ),
                ),
                CustomTextButton(
                  label: 'Try again?',
                  onTap: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SecondScreen()));
                    });
                  },
                ),
                CustomTextButton(
                  label: 'check answers',
                  onTap: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FourthScreen()));
                    });
                  },
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
