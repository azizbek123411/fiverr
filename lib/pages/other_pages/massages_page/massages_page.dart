import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class MassagesPage extends StatefulWidget {
  static const String id = "massages_page";

  const MassagesPage({Key? key}) : super(key: key);

  @override
  State<MassagesPage> createState() => _MassagesPageState();
}

class _MassagesPageState extends State<MassagesPage> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              IconlyLight.filter,
              color: Colors.black,
              size: 25,
            ),
          ),
        ],
        backgroundColor: Colors.white,
        title: const Text(
          "Inbox",
          style: TextStyle(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.w700),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: _height * 0.1,
            ),
            Image(
              image: const AssetImage("assets/images/post.jpg"),
              height: _height * 0.4,
            ),
            SizedBox(
              height: _height * 0.1,
            ),
            const Text(
              "No messages yet",
              style: TextStyle(
                  fontSize: 25,
                  color: Color(0xff385A64),
                  fontWeight: FontWeight.w700),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 15, right: 15, top: 10, ),
              child: Text(
                "Send your first message. You'll find your converstaions all right here",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xff385A64),
                  fontWeight: FontWeight.w700,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
