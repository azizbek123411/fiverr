import 'package:fiverr/pages/other_pages/nav_bar/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white30,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.diamond_outlined,
              color: Colors.black,
              size: 35,
            ),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 5,
        title: Container(
          margin: const EdgeInsets.only(left: 5),
          child: Row(
            children: [
              const Text(
                "fiverr",
                style: TextStyle(
                    fontSize: 25,
                    letterSpacing: -2,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.greenAccent),
              )
            ],
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        height: _height,
        width: _width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: _height * 0.07,
                width: _width * 0.989998,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.shade300),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(top: 20),
                      hintText: "Search services",
                      prefixIcon: Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Icon(
                          Icons.search,
                          size: 30,
                        ),
                      ),
                      border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: _height * 0.06,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Popular Services",
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See All",
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                          color: Colors.greenAccent),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: _height * 0.017,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    services("Logo Design", "assets/images/images (1).png"),
                    SizedBox(
                      width: _width * 0.04,
                    ),
                    services("AI Artist", "assets/images/fiverr.jpeg"),
                    SizedBox(
                      width: _width * 0.04,
                    ),
                    services("Logo Animation", "assets/images/images (6).jpeg"),
                    SizedBox(
                      width: _width * 0.04,
                    ),
                    services("Bussiness Card & Stationery",
                        "assets/images/images (7).jpeg"),
                    SizedBox(
                      width: _width * 0.04,
                    ),
                    services("logo maker", "assets/images/fiverr.jpeg"),
                    SizedBox(
                      width: _width * 0.04,
                    ),
                    services("logo maker", "assets/images/fiverr.jpeg"),
                    SizedBox(
                      width: _width * 0.04,
                    ),
                    services("logo maker", "assets/images/logo.png"),
                    SizedBox(
                      width: _width * 0.04,
                    ),
                    services("logo maker", "assets/images/logo.png"),
                    SizedBox(
                      width: _width * 0.04,
                    ),
                    services("logo maker", "assets/images/logo.png"),
                    SizedBox(
                      width: _width * 0.04,
                    ),
                    services("logo maker", "assets/images/logo.png"),
                    SizedBox(
                      width: _width * 0.04,
                    ),
                    services("logo maker", "assets/images/logo.png"),
                    SizedBox(
                      width: _width * 0.04,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: _height * 0.05,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => BottomNavBar(initialIndex: 1),
                  ));
                },
                child: Container(
                  height: _height * 0.38,
                  width: _width * 0.9,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.white,
                            offset: Offset(4.0, 4.0),
                            blurRadius: 3,
                            spreadRadius: -3),
                        BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4.0, -4.0),
                            blurRadius: 3,
                            spreadRadius: -3),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage("assets/images/imagee.jpg"),
                          fit: BoxFit.cover)),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Made on Fiverr",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            backgroundColor: Colors.grey,
                          ),
                        ),
                        Text(
                          "Explore your Interests in Fiverr",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 43),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: _height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Recently viewed",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.greenAccent),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: _height * 0.02,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    recently("assets/images/image.jpg", "You recently viewed"),
                    SizedBox(
                      width: _width*0.022,
                    ),
                    recently("assets/images/image.jpg", "You recently viewed"),
                    SizedBox(
                      width: _width*0.022,
                    ),  recently("assets/images/image.jpg", "You recently viewed"),
                    SizedBox(
                      width: _width*0.022,
                    ),
                    recently("assets/images/image.jpg", "You recently viewed"),
                    SizedBox(
                      width: _width*0.022,
                    ),
                    recently("assets/images/image.jpg", "You recently viewed"),
                    SizedBox(
                      width: _width*0.022,
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget services(text, image) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: _height * 0.2,
      width: _width * 0.39,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            offset: const Offset(4.0, 4.0),
            blurRadius: 3,
            spreadRadius: -3,
          ),
          const BoxShadow(
              color: Colors.white,
              offset: Offset(4.0, 4.0),
              blurRadius: 3,
              spreadRadius: -3),
          const BoxShadow(
              color: Colors.white,
              offset: Offset(-4.0, -4.0),
              blurRadius: 3,
              spreadRadius: -3),
        ],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black12),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        image,
                      ),
                      fit: BoxFit.cover)),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              text,
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }

  Widget recently(image, text) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: _height * 0.2,
      width: _width * 0.4,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
              color: Colors.white,
              offset: Offset(4.0, 4.0),
              blurRadius: 3,
              spreadRadius: -3),
          BoxShadow(
              color: Colors.white,
              offset: Offset(-4.0, -4.0),
              blurRadius: 3,
              spreadRadius: -3),
        ],
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
