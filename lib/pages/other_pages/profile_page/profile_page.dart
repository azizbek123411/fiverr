import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  static const String id = "profile_page";

  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: [
              Container(
                height: _height * 0.27,
                width: _width,
                color: Colors.green,
              ),
              Container(
                margin:
                    EdgeInsets.only(top: _height * 0.15, left: _width * 0.03),
                height: _height * 0.09,
                width: _width * 0.19,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(50)),
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: _width * 0.005, top: _height * 0.005),
                      child: const Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 73,
                      ),
                    ),
                    Container(
                      height: _height*0. ,
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
