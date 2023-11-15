import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    this.customTextButtonColor = const Color.fromARGB(255, 97, 126, 195),
    super.key,
    required this.label,
    required this.onTap,
  });

  final String label;
  final Function() onTap;
  final Color customTextButtonColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextButton(
        style: TextButton.styleFrom(
          minimumSize: const Size(350, 50),
          foregroundColor: Colors.white,
          backgroundColor: customTextButtonColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          textStyle: const TextStyle(fontSize: 20, letterSpacing: 1.5),
        ),
        onPressed: onTap,
        child: Text(label.toUpperCase()),
      ),
    );
  }
}
