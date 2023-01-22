import 'package:flutter/material.dart';

import 'Screen/barrel.dart';

void main() {
  runApp(const TaskFood());
}

class TaskFood extends StatelessWidget {
  const TaskFood({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themedata,
      home: const SplashScreen(),
    );
  }
}
