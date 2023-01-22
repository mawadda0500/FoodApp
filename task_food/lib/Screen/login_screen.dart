import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_food/widget/material_button.dart';
import 'barrel.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isSignUp = false;

  bool isLogin = true;
  int index = 0;
  List<Widget> page = [Page1(), Page2()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 414,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Peletta.firstWhite,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 113),
                  const Image(
                    image: AssetImage('assets/images/cap.png'),
                    height: 162.38,
                    width: 150,
                  ),
                  const SizedBox(height: 87.62),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            isLogin = true;
                            isSignUp = false;
                            index = 0;
                          });
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            isSignUp = true;
                            isLogin = false;
                            index = 1;
                          });
                        },
                        child: const Text(
                          'Sign-up',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 3,
                        width: 134,
                        color: isLogin
                            ? Peletta.primarySwatch
                            : Peletta.firstWhite,
                      ),
                      Container(
                        height: 3,
                        width: 134,
                        color: isSignUp
                            ? Peletta.primarySwatch
                            : Peletta.firstWhite,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            page[index],
            if (isLogin)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: MyMaterialButton(
                  text: 'Login',
                  color: Peletta.primarySwatch,
                  onPressed: () {
                    print('hejjf');
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => const MyDrawerPage(),
                        ),
                        (route) => false);
                  },
                ),
              ),
            if (isLogin) const SizedBox(height: 41.0),
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 64.0),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Email Adress',
            ),
          ),
          const SizedBox(height: 5.0),
          Text(
            'Forget Password',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: Peletta.primarySwatch,
            ),
          ),
          const SizedBox(height: 64.0),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'PassWord',
            ),
          ),
          const SizedBox(height: 190),
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 80),
        Center(
          child: Text(
            'Sigin-in',
            style: TextStyle(
                fontSize: 60.0,
                color: HexColor('FA4A0C'),
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
