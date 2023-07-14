import 'dart:ui';

import 'package:fiverr/pages/other_pages/home_page/home_page.dart';
import 'package:fiverr/pages/other_pages/profile_page/profile_page.dart';
import 'package:flutter/material.dart';

import 'package:iconly/iconly.dart';

import '../massages_page/massages_page.dart';
import '../order_page/order_page.dart';
import '../search_page/search_page.dart';

class BottomNavBar extends StatefulWidget {
  static const String id = "bottom_nav_bar";
  int initialIndex;

   BottomNavBar({Key? key,required this.initialIndex}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  PageController pageController = PageController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController=PageController(
      initialPage:widget.initialIndex,
    );
    if(widget.initialIndex==2){
      currentIndex=2;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            children: const [
              HomePage(),
              MassagesPage(),
              SearchPage(),
              OrdersPage(),
              ProfilePage(),
            ],
            onPageChanged: (int index) {
              setState(
                    () {
                  currentIndex = index;
                },
              );
            },
          ),
        ],
      ),
      // floatingActionButton: navBar(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: navBar(),
    );
  }

  /// bottom navigation bar widget
  Widget navBar() {
    Size size = MediaQuery.of(context).size;
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaY: 10,
          sigmaX: 10,
        ),
        child: Container(
          height: size.height * 0.1,
          decoration:  BoxDecoration(

            color: Colors.white,
            border: Border.all(color: Colors.grey)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    pageController.jumpToPage(0);
                    currentIndex = 0;
                  });
                },
                icon: Icon(
                  currentIndex == 0 ? IconlyBroken.home : IconlyBroken.home,
                  color: currentIndex == 0 ? Colors.green : Colors.grey,
                  size: currentIndex == 0 ? 30 : 30,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    pageController.jumpToPage(1);
                    currentIndex = 1;
                  });
                },
                icon: Icon(
                  currentIndex == 1 ? IconlyBroken.message : IconlyBroken.message,
                  color: currentIndex == 1 ? Colors.green : Colors.grey,
                  size: currentIndex == 1 ? 30 : 30,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    pageController.jumpToPage(2);
                    currentIndex = 2;
                  });
                },
                icon: Icon(
                  currentIndex == 2
                      ? IconlyBroken.search
                      : IconlyBroken.search,
                  color: currentIndex == 2 ? Colors.green : Colors.grey,
                  size: currentIndex == 2 ? 30 : 30,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    pageController.jumpToPage(3);
                    currentIndex = 3;
                  });
                },
                icon: Icon(
                  currentIndex == 3 ? IconlyBroken.paper : IconlyBroken.paper,
                  color: currentIndex == 3 ? Colors.green : Colors.grey,
                  size: currentIndex == 3 ? 30 : 30,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    pageController.jumpToPage(4);
                    currentIndex = 4;
                  });
                },
                icon: Icon(
                  currentIndex == 4 ? IconlyBroken.profile : IconlyBroken.profile,
                  color: currentIndex == 4 ? Colors.green : Colors.grey,
                  size: currentIndex == 4 ? 30 : 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
