import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffefd9c2),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          margin: EdgeInsets.only(
            top: 300
          ),
          child: Column(
            children: [
              Icon(Icons.check_circle_outline_rounded,size: 130,color: Colors.green,),
              Text('Your Order is Confirmed!',style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),),
              Text('Thanks For Your Order',style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,

              ),)
            ],
          ),
        ),
      ),
    );
  }
}
