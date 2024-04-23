import 'package:coffee_house/utils/colors/colors.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffefd9c2),
      body: Column(
        children: [
          Image.asset('assets/images/be.png'),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: const EdgeInsets.only(),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 50,
            ),
            child: const Text(
              "Enjoy Your Coffee",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
            child: Text(
              " The ultimate refreshing drink \n          to start your day",
              style: TextStyle(
                  color: simpalTextColor, fontSize: 16, wordSpacing: 2),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/home');
            },
            child: Container(
              margin: const EdgeInsets.only(
                top: 40,
              ),
              height: height * 0.07,
              width: width * 0.40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xff2a1710),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 2,
                      blurRadius: 3,
                    )
                  ]),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Dive in',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: height * 0.07 + 2,
          ),
          Image.asset('assets/images/bottom.png'),
        ],
      ),
    );
  }
}
