import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'package:task_food/Screen/barrel.dart';

final ZoomDrawerController z = ZoomDrawerController();

class MyDrawerPage extends StatefulWidget {
  const MyDrawerPage({super.key});

  @override
  State<MyDrawerPage> createState() => _MyDrawerPageState();
}

class _MyDrawerPageState extends State<MyDrawerPage> {
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      mainScreen: const HomeLayout(),
      menuScreen: const SideMenu(),
      menuScreenWidth: double.infinity,
      //mainScreenOverlayColor: Peletta.primarySwatch,
      controller: z,
      borderRadius: 24,
      angle: 0,
      openCurve: Curves.fastOutSlowIn,
      //slideWidth: MediaQuery.of(context).size.width * 0.65,
      closeCurve: Curves.bounceIn,
      showShadow: true,
    );
  }
}

void toggle() {
  z.toggle!();
}

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Peletta.primarySwatch,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.only(left: 38.0),
              child: Column(
                children: const [
                  SizedBox(height: 161.0),
                  Titlebar(
                      icon: CupertinoIcons.person_alt_circle, text: 'Profiles'),
                  SizedBox(height: 26.0),
                  DividerWidget(),
                  SizedBox(height: 26.0),
                  Titlebar(
                      icon: Icons.add_shopping_cart_outlined, text: 'prders'),
                  SizedBox(height: 26.0),
                  DividerWidget(),
                  SizedBox(height: 26.0),
                  Titlebar(
                      icon: Icons.local_offer_outlined,
                      text: 'offer and promo'),
                  SizedBox(height: 26.0),
                  DividerWidget(),
                  SizedBox(height: 26.0),
                  Titlebar(
                      icon: Icons.text_snippet_outlined,
                      text: 'Privacy policy'),
                  SizedBox(height: 26.0),
                  DividerWidget(),
                  SizedBox(height: 26.0),
                  Titlebar(icon: Icons.security, text: 'Security'),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 87.0,
            left: 41.0,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const Welcome(),
                    ),
                    (route) => false);
              },
              child: Row(
                children: const [
                  Text(
                    'Sign-out',
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 12.0),
                  Icon(
                    Icons.arrow_right_alt,
                    size: 24,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
          // Positioned(
          //     top: ((MediaQuery.of(context).size.height - 562.76) / 2 + 19.07),
          //     left: 253.57 - 20.73,
          //     child: Center(
          //       child: Container(
          //         height: 562.76,
          //         width: 260.57,
          //         decoration: BoxDecoration(
          //           image: DecorationImage(
          //               image: AssetImage(
          //                 'assets/images/page image.png',
          //               ),
          //               opacity: 0.2),
          //         ),
          //       ),
          //     )),
          // Positioned(
          //     top: (MediaQuery.of(context).size.height - 562.76) / 2,
          //     left: 253.57,
          //     child: Center(
          //       child: Container(
          //         height: 562.76,
          //         width: 260.57,
          //         decoration: BoxDecoration(
          //           image: DecorationImage(
          //             image: AssetImage(
          //               'assets/images/page image.png',
          //             ),
          //           ),
          //         ),
          //       ),
          //     )),
        ],
      ),
    );
  }
}

class Titlebar extends StatelessWidget {
  final IconData icon;
  final String text;

  const Titlebar({required this.icon, required this.text, Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 24,
          color: Colors.white,
        ),
        const SizedBox(width: 12.0),
        Text(
          text,
          style: const TextStyle(
            fontSize: 17.0,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 36.0),
      child: Align(
          alignment: Alignment.topLeft,
          child: Container(width: 110.0, height: 1, color: Colors.white)),
    );
  }
}
