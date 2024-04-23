import 'package:coffee_house/globals/globals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../utils/colors/colors.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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
              Navigator.of(context).pop();
            },
            child: const Icon(
              Icons.arrow_back,
              color: Color(0xffefd9c2),
            ),
          ),
          title: const Text(
            'Cart',
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
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Iteams',
                  style: TextStyle(
                    color: Color(0xff2a1710),
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ...List.generate(cartList.length, (index) =>
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15,bottom: 20),
                          child: Container(
                            height: height * 0.5 - 280,
                            width: width * 1,
                            decoration: BoxDecoration(
                              color: Color(0xffefd9c2),
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0, 3),
                                    spreadRadius: 0,
                                    blurRadius: 2),
                              ],
                            ),
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 10,
                                  ),
                                  height: height*0.09 + 20,
                                  width: width*0.2 +20,
                                  child: Image.asset(
                                    (cartList[index]['img']),
                                    fit: BoxFit.cover,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [primaryColor, primaryColor, boldTextColor],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 120,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Container(
                                        width: 140,
                                        child: Text(
                                          '${cartList[index]['name']}',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 19,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '${cartList[index]['subText']}',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '\$ ${cartList[index]['price']}',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 19,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 40),
                                            height: 25,
                                            width: 25,
                                            color: Colors.grey,
                                            alignment: Alignment.center,
                                            child: Text(
                                              '${cartList[index]['quantity'].toString()}',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 19,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 49),
                                  height: height*0.099+20,
                                  width: width*0.09 +5,
                                  decoration: BoxDecoration(
                                    color: boldTextColor,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade300,
                                        spreadRadius: 2,
                                        blurRadius: 2,
                                      ),
                                    ],
                                  ),
                                  child:  InkWell(
                                    onTap: () {
                                      setState(() {
                                        cartList.removeAt(index);
                                      });
                                    },
                                    child: Icon(
                                      Icons.delete,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                for(int i= 0 ; i<cartList.length ; i++)
                  {
                    qty =(qty+cartList[i]['quantity']).toInt();
                    amount = amount +cartList[i]['price']*cartList[i]['quantity'];
                  }
                totalAmount = (amount + 1.5);
                Navigator.of(context).pushNamed('/check');
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
                    "Checkout",
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
