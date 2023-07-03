import 'package:fiverr/pages/other_pages/nav_bar/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  static const String id = "intro_page";

  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: _height,
        width: _width,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(
                top: _height * 0.04,
                left: _height * 0.022,
                right: _height * 0.022,
                bottom: _height * 0.2,
              ),
              height: _height,
              width: _width,
              decoration: const BoxDecoration(color: Colors.red),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "fiverr",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            letterSpacing: -6,
                            fontSize: 60,
                            color: Colors.white),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: _height * 0.05),
                        height: _height * 0.01,
                        width: _width * 0.02,
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(60),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: _height * 0.03,
                  ),
                  const Text(
                    "Freenlance",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  const Text(
                    "Services.",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  const Text(
                    "On Demand",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  bottom: _height * 0.02,
                  left: _height * 0.02,
                  right: _height * 0.02),
              margin: EdgeInsets.only(top: _height * 0.8),
              height: _height * 0.3,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Sign in",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Colors.greenAccent),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, BottomNavBar.id);
                    },
                    child: const Text(
                      "Skip",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Colors.greenAccent),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(top: _height * 0.7),
                  height: _height * 0.17,
                  width: _width * 0.4,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            color: Colors.white,
                            borderRadius: const BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: _width * 0.05, top: _height * 0.7),
                  height: _height * 0.2,
                  width: _width * 0.4,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            color: Colors.white,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
