import 'package:fiverr/pages/other_pages/nav_bar/bottom_nav_bar.dart';
import 'package:fiverr/pages/other_pages/search_page/search_page.dart';
import 'package:flutter/material.dart';

class OrdersPage extends StatefulWidget {
  static const String id = "orders_page";

  const OrdersPage({Key? key}) : super(key: key);

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Manage Orders",
          style: TextStyle(
              fontWeight: FontWeight.w700, color: Colors.black, fontSize: 25),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.book,
              color: Colors.grey,
              size: 130,
            ),
            SizedBox(
              height: _height * 0.03,
            ),
            const Text(
              "No Orders Yet",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 25,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: _height * 0.01,
            ),
            const Text(
              "Find the right talent for you",
              style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
            ),
            SizedBox(
              height: _height * 0.01,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => BottomNavBar(initialIndex: 2),
                  ),
                );
              },
              child: const Text(
                "Explore the Marketplace",
                style: TextStyle(
                    color: Colors.greenAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            )
          ],
        ),
      ),
    );
  }
}
