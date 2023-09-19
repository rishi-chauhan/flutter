import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.userInput, {super.key});

  final String userInput;

  @override
  Widget build(context) {
    return Text(
      userInput,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 24,
      ),
    );
  }
}
