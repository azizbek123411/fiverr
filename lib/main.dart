import 'package:fiverr/pages/intro_page/intro_pages/intro_page.dart';
import 'package:fiverr/pages/other_pages/home_page/home_page.dart';
import 'package:fiverr/pages/other_pages/massages_page/massages_page.dart';
import 'package:fiverr/pages/other_pages/nav_bar/bottom_nav_bar.dart';
import 'package:fiverr/pages/other_pages/order_page/order_page.dart';
import 'package:fiverr/pages/other_pages/profile_page/profile_page.dart';
import 'package:fiverr/pages/other_pages/search_page/search_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const IntroPage(),
      routes: {
        IntroPage.id:(context)=>const IntroPage(),
        BottomNavBar.id:(context)=> BottomNavBar(initialIndex: 0,),
        HomePage.id:(context)=>const HomePage(),
        MassagesPage.id:(context)=>const MassagesPage(),
        OrdersPage.id:(context)=>const OrdersPage(),
        ProfilePage.id:(context)=>const ProfilePage(),
        SearchPage.id:(context)=>const SearchPage(),
      },
    );
  }
}


