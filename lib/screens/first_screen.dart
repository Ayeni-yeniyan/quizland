import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quizland/screens/second_screen.dart';

import '../components/constants.dart';
import '../components/custom_textbutton.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text.rich(
            textAlign: TextAlign.center,
            TextSpan(
              text: 'Welcome to \n',
              style: kSubTextStyle,
              children: [
                TextSpan(text: 'quizland!', style: kMainTextStyle),
              ],
            ),
          ),
          SvgPicture.asset('assets/images/learn.svg'),
          CustomTextButton(
            label: 'Start quiz',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SecondScreen()),
              );
            },
          ),
        ],
      ),
    ));
  }
}
