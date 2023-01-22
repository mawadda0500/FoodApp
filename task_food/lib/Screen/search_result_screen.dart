import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_food/configuration/theme.dart';
import 'package:task_food/data/data.dart';
import 'package:task_food/widget/card_widget.dart';

class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('F9F9F9'),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Peletta.scaffoldBackground,
        leading: Padding(
          padding: const EdgeInsets.only(left: 42.0),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 24.0,
            ),
          ),
        ),
        toolbarHeight: 129,
        titleSpacing: 35.0,
        title: TextFormField(
          decoration: InputDecoration.collapsed(
            hintText: 'Spicy chickens',
            hintStyle: TextStyle(),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 34.0),
          child: Column(
            children: [
              const SizedBox(height: 35),
              const Text('Found 6 Results',
                  style:
                      TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold)),
              const SizedBox(height: 45),
              Row(
                children: [
                  Column(
                    children: [
                      CardWidget(
                        firstText: foods[0].food,
                        secondText: foods[0].serial,
                        image: foods[0].image,
                      ),
                      const SizedBox(height: 24.93),
                      CardWidget(
                        firstText: 'Fried chicken m.',
                        secondText: foods[0].serial,
                        image: foods[0].image,
                      ),
                      const SizedBox(height: 24.93),
                      CardWidget(
                        firstText: foods[0].food,
                        secondText: foods[0].serial,
                        image: foods[0].image,
                      ),
                    ],
                  ),
                  const SizedBox(width: 15),
                  Column(
                    children: [
                      SizedBox(height: 54),
                      CardWidget(
                        firstText: 'Egg and Cucmber...',
                        secondText: foods[0].serial,
                        image: foods[0].image,
                      ),
                      const SizedBox(height: 24.93),
                      CardWidget(
                        firstText: 'Moi--moi and ekpa',
                        secondText: foods[0].serial,
                        image: foods[0].image,
                      ),
                      const SizedBox(height: 24.93),
                      CardWidget(
                        firstText: foods[0].food,
                        secondText: foods[0].serial,
                        image: foods[0].image,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
