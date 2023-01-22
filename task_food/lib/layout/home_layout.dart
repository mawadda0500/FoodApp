import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_food/Screen/barrel.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageIndex[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          backgroundColor: Peletta.scaffoldBackground,
          unselectedItemColor: HexColor('ADADAF'),
          currentIndex: _selectedIndex,
          selectedItemColor: Peletta.primarySwatch,
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.home_outlined,
                size: 35,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.favorite_border_outlined,
                size: 31,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 31,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.history,
                size: 31,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Widget> pageIndex = [
  HomeSceen(),
  const Favorite(),
  const FoodCart(),
  const History()
];

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Favorite',
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'History',
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Profile',
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
