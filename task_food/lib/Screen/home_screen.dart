import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_food/Screen/barrel.dart';
import 'package:task_food/widget/category_selector.dart';

class HomeSceen extends StatelessWidget {
  const HomeSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            ZoomDrawer.of(context)!.toggle();
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 50.0),
            child: Icon(
              Icons.menu,
              color: Colors.black,
              size: 22.0,
            ),
          ),
        ),
        actions: [
          Icon(
            Icons.shopping_cart_outlined,
            color: HexColor('000000'),
            size: 24.0,
          ),
          const SizedBox(width: 50.0),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 43.33),
              const Text(
                'Delicious \nfood for you',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 28.0),
              Center(
                child: Container(
                  height: 60,
                  width: 314,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: HexColor('EFEEEE'),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 35),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const SearchResultScreen(),
                            ),
                          );
                        },
                        child: const Icon(
                          Icons.search,
                          size: 28.0,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Flexible(
                        child: TextFormField(
                          decoration: const InputDecoration.collapsed(
                            hintText: 'Search',
                            hintStyle: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 46.0),
              CategorySelector(),
            ],
          ),
        ),
      ),
    );
  }
}
