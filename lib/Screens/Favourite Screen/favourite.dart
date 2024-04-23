import 'package:coffee_house/globals/globals.dart';
import 'package:flutter/material.dart';

import '../../utils/colors/colors.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
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
          'Favourite',
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
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed('/like');
        },
        child:Column(
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
                    ...List.generate(favouriteList.length, (index) =>
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
                                    (favouriteList[index]['img']),
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
                                          '${favouriteList[index]['name']}',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 19,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '${favouriteList[index]['subText']}',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        '\$ ${favouriteList[index]['price']}',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 50),
                                  height: height*0.099+20,
                                  width: width*0.09 +5,

                                  child:  InkWell(
                                    onTap: () {
                                      setState(() {
                                        favouriteList.removeAt(index);
                                      });
                                    },
                                    child: Icon(
                                      Icons.favorite,
                                      size: 30,
                                      color: Colors.red,
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

          ],
        ),
      ),
    ),);
  }
}
