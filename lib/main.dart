import 'package:coffee_house/Screens/Cart%20Screen/cartScreen.dart';
import 'package:coffee_house/Screens/CheckOut%20Screen/chekOut.dart';
import 'package:coffee_house/Screens/Detail%20Screen/detailScreen.dart';
import 'package:coffee_house/Screens/Favourite%20Screen/favourite.dart';
import 'package:coffee_house/Screens/Home%20Screen/homeScreen.dart';
import 'package:coffee_house/Screens/Intro%20Screen/intro.dart';
import 'package:coffee_house/Screens/Order%20Done/order.dart';
import 'package:coffee_house/Screens/ProfileScreen/profileScreen.dart';
import 'package:coffee_house/Screens/Splash%20Screen/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main()
{
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xFF181A20),
  ));
  runApp(CoffeeApp());
}
class CoffeeApp extends StatelessWidget {
  const CoffeeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Coffee house",
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/intro': (context) => const IntroScreen(),
        '/home': (context) => const HomeScreen(),
        '/detail': (context) => const DetailsScreen(),
        '/cart': (context) => const CartScreen(),
        '/check': (context) => const CheckOutScreen(),
        '/like': (context) => const Favourite(),
        '/order': (context) => const Order(),
        '/prf': (context) => const ProfilePage(),
      },
    );
  }
}
