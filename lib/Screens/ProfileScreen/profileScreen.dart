import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffefd9c2),
      appBar:  AppBar(
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
          'Profile',
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
          Container(
            child: Stack(
              children: [
                Container(
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color:Color(0xff2a1710),
                    borderRadius: BorderRadius.only(
                      bottomLeft:Radius.circular(200),
                      bottomRight:Radius.circular(200),

                    )
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 80,
                    left: 100,
                  ),
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(150),
                    border: Border.all(color: Colors.white,width: 4),
                    image: DecorationImage(
                      image: AssetImage('assets/images/prf.png'),
                      fit: BoxFit.cover
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text('Mayuri Purohit',style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 26
          ),),
          Text('mayup95106@gmail.com',style: TextStyle(
              color: Colors.black,
              fontSize: 15
          ),),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 55,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.brown.shade300,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.settings,size: 30,),
                SizedBox(
                  width: 20,
                ),
                Text('Account  Settings',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 55,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.brown.shade300,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.rate_review_rounded,size: 29,),
                SizedBox(
                  width: 20,
                ),
                Text('My Reviews',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 55,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.brown.shade300,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.person,size: 30,),
                SizedBox(
                  width: 20,
                ),
                Text('Personal Information',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 55,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.brown.shade300,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.notifications_sharp,size: 30,),
                SizedBox(
                  width: 20,
                ),
                Text('Notification',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 55,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.brown.shade300,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.fingerprint,size: 30,),
                SizedBox(
                  width: 20,
                ),
                Text('Fingerprint Settings',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
              ],
            ),
          )

        ],
      )
    );
  }
}
