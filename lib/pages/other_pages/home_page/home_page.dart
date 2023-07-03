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
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          height: _height,
          width: _width,
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
                    services("logo maker", "assets/images/fiverr.jpeg"),
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
                    services("logo maker", "assets/images/fiverr.jpeg"),
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
              Stack(
                children: [
                  Container(
                    height: _height * 0.38,
                    width: _width * 0.9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: _height * 0.026, left: _width * 0.05),
                    padding: const EdgeInsets.only(top: 5, left: 11),
                    height: _height * 0.031,
                    width: _width * 0.35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey,
                    ),
                    child: const Text(
                      "MADE ON FIVERR",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                   Container(
                     padding: EdgeInsets.only(
                       top:_height*0.2,
                       right: 16,
                       left: 16,
                     ),
                     child: const Text(
                       "Explore beatifiul work, picked for you.",
                       style: TextStyle(
                           fontSize: 37,
                           fontWeight: FontWeight.w700,
                           color: Colors.white),
                     ),
                   )
                ],
              ),
              SizedBox(
                height: _height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Recently viewed",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.greenAccent),
                    ),
                  )
                ],
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
      height: _height * 0.3,
      width: _width * 0.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            offset: const Offset(4.0, 4.0),
            blurRadius: 3,
            spreadRadius: 3,
          ),
          const BoxShadow(
              color: Colors.white,
              offset: Offset(-4.0, -4.0),
              blurRadius: 3,
              spreadRadius: 0),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: _height * 0.184,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                )),
          ),
          const Divider(
            color: Colors.black12,
          ),
          Container(
            margin: EdgeInsets.only(right: _width * 0.08, top: _height * 0.013),
            child: Text(
              text,
              style: const TextStyle(
                  fontSize: 26,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
          )
        ],
      ),
    );
  }
}
