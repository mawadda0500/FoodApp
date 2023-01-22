import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_food/Screen/barrel.dart';
import 'package:task_food/configuration/theme.dart';
import 'package:task_food/data/data.dart';

class CategorySelector extends StatefulWidget {
  const CategorySelector({super.key});

  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

int selectedIndex = 0;

class _CategorySelectorState extends State<CategorySelector> {
  List<String> categories = ['Foods', 'Drinks', 'Snacks', 'Sauce'];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Peletta.scaffoldBackground,
          height: 36,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                          left: 16.5, right: 16.5, bottom: 10.0),
                      child: Text(
                        categories[index],
                        style: TextStyle(
                          fontSize: 17.0,
                          color: HexColor('9A9A9D'),
                        ),
                      ),
                    ),
                    Container(
                      height: 3.0,
                      width: 87.8,
                      color: index == selectedIndex
                          ? Peletta.primarySwatch
                          : Peletta.scaffoldBackground,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        section[selectedIndex],
      ],
    );
  }
}

class Section1 extends StatelessWidget {
  const Section1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50.0),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 420,
            width: double.infinity,
          ),
          Container(
            height: 321.0,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0)),
                  child: Card(
                    shadowColor: Colors.black.withOpacity(0.3),
                    child: Stack(
                      children: [
                        Container(
                          height: 321.0,
                          width: 220,
                          color: Peletta.scaffoldBackground,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 220,
                                height: 270,
                                decoration: BoxDecoration(
                                    color: Peletta.firstWhite,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 145.0),
                                    SizedBox(
                                      width: 120,
                                      child: Text(
                                        foods[index].food,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 15.0),
                                    Text(
                                      foods[index].serial,
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
                          right: 27.93,
                          child: Container(
                            height: 164.16,
                            width: 164.16,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    offset: Offset(0, 7),
                                    blurRadius: 25)
                              ],
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: foods[index].image,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Container(
                  height: 321.0,
                  width: 34.0,
                );
              },
              itemCount: foods.length,
            ),
          ),
        ],
      ),
    );
  }
}

class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page2'),
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page3'),
    );
  }
}

class Section4 extends StatelessWidget {
  const Section4({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page4'),
    );
  }
}

List<Widget> section = [Section1(), Section2(), Section3(), Section4()];
