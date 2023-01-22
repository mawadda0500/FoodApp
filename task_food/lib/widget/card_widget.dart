import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_food/configuration/theme.dart';

class CardWidget extends StatelessWidget {
  final String firstText;
  final String secondText;
  final AssetImage image;

  const CardWidget(
      {required this.firstText,
      required this.secondText,
      required this.image,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0)),
      child: Card(
        child: Stack(
          children: [
            Container(
              height: 252.07,
              width: 156,
              color: HexColor('F9F9F9'),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 156.0,
                    height: 212.41,
                    decoration: BoxDecoration(
                        color: Peletta.firstWhite,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 107.53),
                        SizedBox(
                          width: 120,
                          child: Text(
                            firstText,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 15.0),
                        Text(
                          secondText,
                          style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                            color: Peletta.primarySwatch,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 13.96,
              child: Container(
                height: 128.89,
                width: 128.89,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: image, fit: BoxFit.contain),
                ),
              ),
            )
          ],
        ),
      ),
    );
    ;
  }
}
