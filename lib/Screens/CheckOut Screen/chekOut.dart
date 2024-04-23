

import 'package:coffee_house/globals/globals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

import '../../utils/colors/colors.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffefd9c2),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xff2a1710),
          leading: GestureDetector(
            onTap: () {
              qty = 0;
              amount = 0;
              totalAmount =0;
              Navigator.of(context).pop('/cart');
            },
            child: const Icon(
              Icons.arrow_back,
              color: Color(0xffefd9c2),
            ),
          ),
          title: const Text(
            'My Orders',
            style: TextStyle(
                color: Color(0xffefd9c2),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
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
        body: Column(
          children: [
            Expanded(
              flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 20,
                        ),
                        height: height*0.05,
                        width: width*0.9 +50,
                        decoration: BoxDecoration(
                          color: Color(0xff724e42),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 3),
                                spreadRadius: 0,
                                blurRadius: 2),
                          ],
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Select Payment method',style: TextStyle(
                          color: Color(0xffefd9c2),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 20,
                        ),
                        height: height*0.08,
                        width: width*0.9 +50,
                        decoration: BoxDecoration(
                          border:Border(
                            bottom: BorderSide(
                              color: Colors.grey,
                              width: 3,
                            )
                          ),
                          color: Color(0xffefd9c2),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 3),
                                spreadRadius: 0,
                                blurRadius: 2),
                          ],

                        ),
                        alignment: Alignment.center,
                        child: Row(
                          children: [SizedBox(width: 20,),
                            Container(
                                height: height*0.04,
                                width: width*0.1,
                                child: Image.asset('assets/images/card.png')
                            ),
                            SizedBox(width: 20,),
                            Text(
                              'Online',style: TextStyle(
                              color: Colors.brown,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            SizedBox(width: 160,),
                            Icon(Icons.check_circle,color: Colors.green,size: 28,),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: height*0.08,
                        width: width*0.9 +50,
                        decoration: BoxDecoration(
                          color: Color(0xffefd9c2),
                          border:Border(
                              bottom: BorderSide(
                                color: Colors.grey,
                                width: 3,
                              )
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 3),
                                spreadRadius: 0,
                                blurRadius: 2),
                          ],
                        ),
                        alignment: Alignment.center,
                        child: Row(

                          children: [
                            SizedBox(width: 10,),
                            Container(
                                height: height*0.04,
                                width: width*0.1,
                                child: Image.asset('assets/images/cash.png')
                            ),
                            SizedBox(width: 30,),
                            Text(
                              'Cash On Delivery',style: TextStyle(
                              color: Colors.brown,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            SizedBox(width: 70,),
                            Icon(Icons.check_circle_outline,color: Colors.grey,size: 28,),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: height*0.08,
                        width: width*0.9 +50,
                        decoration: BoxDecoration(
                          color: Color(0xffefd9c2),
                          border:Border(
                              bottom: BorderSide(
                                color: Colors.grey,
                                width: 3,
                              )
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 3),
                                spreadRadius: 0,
                                blurRadius: 2),
                          ],

                        ),
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            SizedBox(width: 10,),
                            Container(
                                height: height*0.04,
                                width: width*0.1,
                                child: Image.asset('assets/images/pay.png')
                            ),
                            SizedBox(width: 30,),
                            Text(
                              'PhonePay',style: TextStyle(
                              color: Colors.brown,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            SizedBox(width: 127,),
                            Icon(Icons.check_circle_outline,color: Colors.grey,size: 28,),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 80),
                        height: height*0.06,
                         width: width*0.9 +50,
                        decoration: BoxDecoration(
                          // color: Colors.brown.shade300,
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey,
                              width: 2
                            )
                          )
                        ),
                        alignment : Alignment.centerLeft,
                        child: Row(
                          children: [
                            Text('Total  Products',style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),),
                            SizedBox(width: 100,),

                            Container(
                              height: 30,
                              width: 90,
                              alignment: Alignment.center,
                              child: Text('$qty',style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: height*0.06,
                        width: width*0.9 +50,
                        decoration: BoxDecoration(
                        ),
                        alignment : Alignment.centerLeft,
                        child: Row(
                          children: [
                            Text('Item Total',style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),),
                            SizedBox(width: 140,),
                            Container(
                              height: 30,
                              width: 90,

                              alignment: Alignment.center,
                              child: Text('\$ $amount',style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: height*0.06,
                        width: width*0.9 +50,
                        decoration: BoxDecoration(
                            // color: Colors.brown.shade300,
                            border: Border(
                                bottom: BorderSide(
                                    color: Colors.grey,
                                    width: 2
                                )
                            )
                        ),
                        alignment : Alignment.centerLeft,
                        child: Row(
                          children: [
                            Text('Delivery charges',style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),),
                            SizedBox(width: 85,),
                            Container(
                              height: 30,
                              width: 90,
                              alignment: Alignment.center,
                              child: Text('\$ 1.5',style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: height*0.08,
                        width: width*0.9 +50,
                        decoration: BoxDecoration(
                             color: Colors.brown.shade200,
                            border: Border(
                                bottom: BorderSide(
                                    color: Colors.grey,
                                    width: 2
                                )
                            ),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0, 3),
                                  spreadRadius: 0,
                                  blurRadius: 2),
                            ],
                          borderRadius: BorderRadius.circular(15)
                        ),
                        alignment : Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text('Bill Amount',style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),),
                              SizedBox(width: 120,),
                              Container(
                                height: 30,
                                width: 90,
                                alignment: Alignment.center,
                                child: Text('\$ $totalAmount',style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),),
                              ),
                            ],
                          ),

                        ),
                      ),
                    ],
                  ),
                )
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/order');
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10,

                ),
                child: Container(
                  height: height*0.075,
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
                  alignment: Alignment.center,
                  child: Text(
                    "Place Order ",
                    style: TextStyle(
                        color: Color(0xffefd9c2),
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        wordSpacing: 2
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
