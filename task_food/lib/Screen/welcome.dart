import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_food/Screen/barrel.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('E82E00'),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/splash_two.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            bottom: 15.0,
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                    (route) => false);
              },
              child: Container(
                alignment: Alignment.center,
                height: 70.0,
                width: 314.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Text(
                  'Get started',
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: HexColor('E82E00'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
