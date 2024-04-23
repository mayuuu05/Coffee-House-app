import 'dart:ui';

import 'package:coffee_house/Screens/Detail%20Screen/detailScreen.dart';
import 'package:coffee_house/globals/globals.dart';
import 'package:coffee_house/utils/colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: const Color(0xff2a1710),
            leading: const Icon(
              Icons.menu_open,
              color: Color(0xffefd9c2),
            ),
            title: const Text(
              'Coffeehouse',
              style: TextStyle(
                  color: Color(0xffefd9c2),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            actions: [
              const Padding(
                padding: EdgeInsets.only(
                  right: 10,
                ),
                child: Icon(
                  Icons.notifications_outlined,
                  color: Color(0xffefd9c2),
                  size: 25,
                ),
              ),
            ],
          ),
          backgroundColor: const Color(0xffefd9c2),
          body: Column(
            children: [
              const SizedBox(
                height: 20,
              ),

              const Padding(
                padding: EdgeInsets.only(
                  left: 20
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    " Find the best \n Coffee to your taste ",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              DropdownButton(
                value: dropDownSelectedIndex,

                borderRadius: BorderRadius.circular(20),
                focusColor: const Color(0xff2a1710),
                icon: const Icon(
                  Icons.search,
                  color: Color(0xff8e8d8d),
                  size: 25,
                ),
                items: const [
                  DropdownMenuItem(
                    value: 0,
                    child: Text(
                      "    Find Your Coffee                                   ",
                      style: TextStyle(
                          color: Color(0xff8e8d8d),
                          fontWeight: FontWeight.w400,
                          fontSize: 17),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 1,
                    child: Text(
                      "Milk Shake",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff2a1710),
                          fontSize: 17),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 2,
                    child: Text(
                      "Chocolate",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff2a1710),
                          fontSize: 17),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 3,
                    child: Text(
                      "Cappuccino",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff2a1710),
                          fontSize: 17),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 4,
                    child: Text(
                      "Ice Coffee",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff2a1710),
                          fontSize: 17),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 5,
                    child: Text(
                      "Hot Coffee",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff2a1710),
                          fontSize: 17),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 6,
                    child: Text(
                      "Cold Cooffee",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff2a1710),
                          fontSize: 17),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 7,
                    child: Text(
                      "Chocolate Drinks",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff2a1710),
                          fontSize: 17),
                    ),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    dropDownSelectedIndex = value!;
                  });
                },
              ),

              Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 20
                              ),
                              height: 210,
                              width: 150,
                              decoration: BoxDecoration(
                                image: const DecorationImage(image:
                                AssetImage('assets/images/O5.png'),fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                left: 20
                              ),
                              height: 210,
                              width: 150,
                              decoration: BoxDecoration(
                                image: const DecorationImage(image:
                                AssetImage('assets/images/O1.png'),fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 210,
                              width: 150,
                              decoration: BoxDecoration(
                                image: const DecorationImage(image:
                                AssetImage('assets/images/O4.png'),fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 210,
                              width: 150,
                              decoration: BoxDecoration(
                                image: const DecorationImage(image:
                                AssetImage('assets/images/O3.png'),fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 210,
                              width: 150,
                              decoration: BoxDecoration(
                                image: const DecorationImage(image:
                                AssetImage('assets/images/O2.png'),fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ],
                        ),
                      ),


                      Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              physics: const BouncingScrollPhysics(),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            color: const Color(0xff2a1710),
                                            border: Border.all(
                                              color: const Color(0xff8e817d),
                                            ),
                                            borderRadius: BorderRadius.circular(15),

                                          ),
                                          alignment: Alignment.center,
                                          child: const Text('All',style: TextStyle(
                                            color: Color(0xffefd9c2),
                                          ),)
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      Container(
                                        height: 7,
                                        width: 35,
                                        decoration: BoxDecoration(
                                          color: const Color(0xff2a1710),
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffefd9c2),
                                      border: Border.all(
                                        color: const Color(0xff8e817d),
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: const Icon(Icons.coffee_outlined,color: Color(0xff2a1710),size: 30,),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffefd9c2),
                                      border: Border.all(
                                        color: const Color(0xff8e817d),
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: const Icon(Icons.cookie,color: Color(0xff2a1710),size: 30,),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffefd9c2),
                                      border: Border.all(
                                        color: const Color(0xff8e817d),
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: const Icon(Icons.local_bar_rounded,color: Color(0xff2a1710),size: 30,),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffefd9c2),
                                      border: Border.all(
                                        color: const Color(0xff8e817d),
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: const Icon(Icons.emoji_food_beverage,color: Color(0xff2a1710),size: 30,),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffefd9c2),
                                      border: Border.all(
                                        color: const Color(0xff8e817d),
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: const Icon(Icons.local_cafe_sharp,color: Color(0xff2a1710),size: 30,),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffefd9c2),
                                      border: Border.all(
                                        color: const Color(0xff8e817d),
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: const Icon(Icons.wine_bar,color: Color(0xff2a1710),size: 30,),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      ...List.generate(productList.length, (index) =>  GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index ;
                          });
                          Navigator.of(context).pushNamed('/detail');
                        },
                        child: productsContainer(height, width,
                          img: productList[index]['img'],
                          name: productList[index]['name'],
                          subText: productList[index]['subText'],
                          price: productList[index]['price'],
                        ),
                      ),)

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  height: 70,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color(0xffefd9c2),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff2a1710),
                          spreadRadius: 0.5,
                          blurRadius: 2,
                        )
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 6),
                          child: Column(
                            children: [
                              const Icon(
                                Icons.home_rounded,
                                size: 28,
                                color: Color(0xff2a1710),
                              ),
                              Container(
                                height: 7,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: const Color(0xff2a1710),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed('/like');
                            setState(() {
                              favouriteList.add(productList[selectedIndex]);
                            });
                          },
                          child: const Icon(
                            Icons.favorite_outline_rounded,
                            size: 25,
                            color: Color(0xff2a1710),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed('/cart');
                          },
                          child: const Icon(
                            Icons.shopping_cart_outlined,
                            size: 25,
                            color: Color(0xff2a1710),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed('/prf');
                          },
                          child: const Icon(
                            Icons.person_outline_outlined,
                            size: 28,
                            color: Color(0xff2a1710),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
  Container productsContainer(double height, double width, {required String img,
    required String name,
    required String subText,
    required double price}) {

    return Container(
                      margin: const EdgeInsets.only(top: 30),
                      height: height * 0.0990 + 60,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [primaryColor, primaryColor, boldTextColor],
                            ),

                          border: const Border(
                            bottom: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          boxShadow:  [
                            BoxShadow(
                                color: Colors.grey.shade500,
                                offset: Offset(0, 2),
                                spreadRadius: 0.5,
                                blurRadius: 5),
                          ]),
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Container(
                              height: height * 0.0990 + 40,
                              width: width * 0.3,

                              child: Image.asset(
                                img,
                                fit: BoxFit.cover,
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 120,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  width: 140,
                                  child: Text(
                                    name,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Text(
                                  subText,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  '\$ $price',
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 39,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [

                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  margin: const EdgeInsets.only(
                                    top:90,
                                  ),
                                  height: height * 0.06,
                                  width: width * 0.13,
                                  decoration: const BoxDecoration(
                                    color: Color(0xff2a1710),
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(18),
                                      topLeft: Radius.circular(18),
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
  }



