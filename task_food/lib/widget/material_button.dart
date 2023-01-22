import 'package:flutter/material.dart';

class MyMaterialButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onPressed;

  const MyMaterialButton(
      {required this.text,
      required this.color,
      required this.onPressed,
      Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70.0,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(30.0)),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 17.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
