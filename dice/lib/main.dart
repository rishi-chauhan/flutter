import 'package:flutter/material.dart';
import 'package:dice/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Color.fromARGB(255, 21, 9, 41),
            Color.fromARGB(255, 90, 105, 174),
          ],
        ),
      ),
    ),
  );
}
