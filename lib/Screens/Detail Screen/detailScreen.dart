
import 'dart:ui';

import 'package:coffee_house/Screens/Cart%20Screen/cartScreen.dart';
import 'package:coffee_house/globals/globals.dart';
import 'package:coffee_house/utils/colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
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
        backgroundColor: const Color(0xffefd9c2),
        body: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: height*0.5-100,
                    width: width*0.9+10,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color:  Color(0xff2a1710),width: 2)
                      )
                    ),
                    // color: Colors.brown,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: height*0.5-170,
                              width: width*0.5 -10,
                              // color: Colors.white10,
                              child: Image.asset(productList[selectedIndex]['img'],fit: BoxFit.cover,),
                            ),
                            Container(
                              height: height*0.5-150,
                              width: width*0.5 -17,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),

                                // color: const Color(0xff2a1710).withOpacity(0.5),
                              ),

                              child: Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                          top: 60
                                        ),
                                        child: Text(
                                          '${productList[selectedIndex]['name']}',style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22,
                                        ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                            '${productList[selectedIndex]['subText']}',style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                        ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: height*0.02,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Row(
                                          children: [
                                            Icon(Icons.star_rate_rounded,color:Color(0xffd17842),size: 25,),
                                            Icon(Icons.star_rate_rounded,color:Color(0xffd17842),size: 25,),
                                            Icon(Icons.star_rate_rounded,color:Color(0xffd17842),size: 25,),
                                            Icon(Icons.star_rate_rounded,color:Color(0xffd17842),size: 25,),
                                            Icon(Icons.star_rate_rounded,color:Colors.grey,size: 25,),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 40,top: 10),
                                        child: Row(
                                          children: [
                                            Text(
                                              '  4.2',style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                            ),
                                            ),
                                            Text(
                                              "(6029)",style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                            ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child:
                            InkWell(
                              onTap: () {
                                setState(() {
                                  click =! click;
                                });
                              },
                              child: Icon(
                                click == true
                                    ? Icons.favorite_border_rounded
                                    : Icons.favorite_rounded,
                                size: 32,
                                color:
                                (click == true) ? Colors.white : Color(0xffd68757),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                DropdownButton(
                  value: dropDownSelectedIndex,
                  underline: Container(
                    color: const Color(0xff2a1710),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  focusColor: const Color(0xff2a1710),
                  icon: const Icon(Icons.keyboard_arrow_down,
                    color: Color(0xff2a1710), size: 30,),
                  items: const [
                    DropdownMenuItem(child: Text(
                      "White Chocolate                                              ", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff2a1710),
                        fontSize: 15),), value: 0,),
                    DropdownMenuItem(child: Text("Dark Chocolate",
                      style: TextStyle(fontWeight: FontWeight.bold,
                          color: Color(0xff2a1710),
                          fontSize: 15),), value: 1,),
                    DropdownMenuItem(child: Text("Milk Chocolate",
                      style: TextStyle(fontWeight: FontWeight.bold,
                          color: Color(0xff2a1710),
                          fontSize: 15),), value: 2,),
                    DropdownMenuItem(child: Text("Roasted Almonds",
                      style: TextStyle(fontWeight: FontWeight.bold,
                          color: Color(0xff2a1710),
                          fontSize: 15),), value: 3,),
                    DropdownMenuItem(child: Text("Hazelnuts", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff2a1710),
                        fontSize: 15),), value: 4,),
                  ],
                  onChanged: (value) {
                    setState(() {
                      dropDownSelectedIndex = value!;
                    });
                  },),
                Container(
                  margin: const EdgeInsets.only(top: 5, left: 20),
                  child: const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Description",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15, left: 20, right: 20),
                  child:  Align(
                    alignment: Alignment.center,
                    child: Text.rich(TextSpan(children: [
                      TextSpan(
                        text:
                        'Coffee is a beloved beverage enjoyed worldwide for its rich flavor, aroma, and energizing effects. It is made from roasted and ground coffee beans, typically sourced from the Coffea plants seeds. There are various types of coffee beans, each contributing to unique taste profiles influenced by factors such as region, altitude, and processing methods......',
                        style: TextStyle(
                          color: Color(0xff2a1710),
                          fontSize: 12,
                        ),
                      ),
                      TextSpan(
                        text: "Read more",
                        style: TextStyle(
                          color: Color(0xff2a1710),
                          fontSize: 15.5,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ])),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 40),
                          child: const Text(
                            "Quantity",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 10, bottom: 10),
                              height: 28,
                              width: 28,
                              decoration: BoxDecoration(
                                color: const Color(0xff2a1710),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Icon(Icons.add, size: 18,
                                weight: 200,
                                color: Color(0xffefd9c2),),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text(
                              "1",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 10, bottom: 10),
                              height: 28,
                              width: 28,
                              decoration: BoxDecoration(
                                color: const Color(0xff8e817d),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Icon(Icons.remove, size: 18,
                                weight: 200,
                                color: Color(0xffefd9c2),),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 40),
                          child: const Text(
                            "Size",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                margin: const EdgeInsets.only(
                                    top: 10, bottom: 10),
                                height: 28,
                                width: 28,
                                decoration: BoxDecoration(
                                  color: const Color(0xff2a1710),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                alignment: Alignment.center,
                                child:
                                const Text(
                                  "S",
                                  style: TextStyle(color: Color(0xffefd9c2),),
                                )
                              // Icon(Icons.add,size: 18,weight: 200, color: Color(0xffefd9c2),),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                                margin: const EdgeInsets.only(
                                    top: 10, bottom: 10),
                                height: 28,
                                width: 28,
                                decoration: BoxDecoration(
                                  color: const Color(0xff8e817d),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                alignment: Alignment.center,
                                child:
                                const Text(
                                  "M",
                                  style: TextStyle(color: Color(0xffefd9c2),),
                                )
                              // Icon(Icons.add,size: 18,weight: 200, color: Color(0xffefd9c2),),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                                margin: const EdgeInsets.only(
                                    top: 10, bottom: 10),
                                height: 28,
                                width: 28,
                                decoration: BoxDecoration(
                                  color: const Color(0xff8e817d),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                alignment: Alignment.center,
                                child:
                                const Text(
                                  "L",
                                  style: TextStyle(color: Color(0xffefd9c2),),
                                )
                              // Icon(Icons.add,size: 18,weight: 200, color: Color(0xffefd9c2),),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),

                GestureDetector(
                  onTap: () {
                    bool status = false;
                    int index =0;

                    for(int i = 0; i<cartList.length ; i++)
                      {
                        if(cartList[i]['name']==productList[selectedIndex]['name'])
                          {
                            index = i;
                            status = true;
                          }
                      }
                    if(status)
                      {
                        cartList[index]['quantity']++;
                      }
                    else
                      {
                        cartList.add(productList[selectedIndex]);
                      }

                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10,
                        top: 44
                    ),
                    child: Container(
                      height: 65,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: Color(0xff2a1710),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(35),
                            topLeft: Radius.circular(35),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff2a1710),
                              spreadRadius: 0.5,
                              blurRadius: 2,
                            )
                          ]),
                      child:  Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "ADD TO CART      ",
                              style: TextStyle(
                                  color: Color(0xffefd9c2),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  wordSpacing: 2
                              ),
                            ),

                            Text(
                              ('  |      \$ ${productList[selectedIndex]['price']}'),
                              style: TextStyle(
                                  color: Color(0xffefd9c2),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  wordSpacing: 2
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

}
bool click = false;
int dropDownSelectedIndex = 0;