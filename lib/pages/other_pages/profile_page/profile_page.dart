import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

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
          Container(
            margin: EdgeInsets.only(top: _height * 0.22),
            child: ListView(
              children: [
                Container(
                  height: _height * 0.1,
                  width: _width,
                  color: Colors.grey.shade200,
                  padding:
                      EdgeInsets.only(left: _width * 0.05, top: _height * 0.03),
                  child: const Text(
                    "My Fiverr",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.diamond_outlined,
                    size: 36,
                    color: Colors.black26,
                  ),
                  title: Text(
                    "Get insipired",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 22),
                  ),
                ),
                const Divider(
                  color: Colors.black12,
                  height: 20,
                  thickness: 1,
                ),
                const ListTile(
                  leading: Icon(
                    Icons.favorite_outline,
                    size: 36,
                    color: Colors.black26,
                  ),
                  title: Text(
                    "Saved lists ",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 22),
                  ),
                ),
                const Divider(
                  color: Colors.black12,
                  height: 20,
                  thickness: 1,
                ),
                const ListTile(
                  leading: Icon(
                    Icons.interests,
                    size: 36,
                    color: Colors.black26,
                  ),
                  title: Text(
                    "My interests ",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 22),
                  ),
                ),
                const Divider(
                  color: Colors.black12,
                  height: 20,
                  thickness: 1,
                ),
                const ListTile(
                  leading: Icon(
                    Icons.send,
                    size: 36,
                    color: Colors.black26,

                  ),
                  title: Text(
                    "Invite friends ",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 22),
                  ),
                ),
                Container(

                  height: _height * 0.1,
                  width: _width,
                  color: Colors.grey.shade200,
                  padding:
                  EdgeInsets.only(left: _width * 0.05, top: _height * 0.03),
                  child: const Text(
                    "Settings",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.settings,
                    size: 36,
                    color: Colors.black26,
                  ),
                  title: Text(
                    "Prefereces",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 22),
                  ),
                ),
                const Divider(
                  color: Colors.black12,
                  height: 20,
                  thickness: 1,
                ),
                const ListTile(
                  leading: Icon(
                    Icons.person_pin_outlined,
                    size: 36,
                    color: Colors.black26,
                  ),
                  title: Text(
                    "Account",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 22),
                  ),
                ),

                Container(
                  height: _height * 0.1,
                  width: _width,
                  color: Colors.grey.shade200,
                  padding:
                  EdgeInsets.only(left: _width * 0.05, top: _height * 0.03),
                  child: const Text(
                    "Resources",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.support,
                    size: 36,
                    color: Colors.black26,
                  ),
                  title: Text(
                    "Support",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 22),
                  ),
                ),
                const Divider(
                  color: Colors.black12,
                  height: 20,
                  thickness: 1,
                ),
                const ListTile(
                  leading: Icon(
                    Icons.chat_bubble_outline_rounded,
                    size: 36,
                    color: Colors.black26,
                  ),
                  title: Text(
                    "Community and legal",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 22),
                  ),
                ),
                const Divider(
                  color: Colors.black12,
                  height: 20,
                  thickness: 1,
                ),
                const ListTile(
                  leading: Icon(
                    Icons.sell_outlined,
                    size: 36,
                    color: Colors.black26,
                  ),
                  title: Text(
                    "Become a seller",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 22),
                  ),
                ),
                Container(
                  height: _height * 0.1,
                  width: _width,
                  color: Colors.grey.shade200,
                  padding:
                  EdgeInsets.only(left: _width * 0.05, top: _height * 0.03),
                  child: const Center(
                    child: Text(
                      "version",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.grey,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                height: _height * 0.27,
                width: _width,
                color: Colors.green,
              ),
              Container(
                margin: EdgeInsets.only(top: _height * 0.15, left: _width * 0.03),
                child: Stack(
                  children:[
                    CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.grey.shade400,
                    child: Icon(Icons.person,color: Colors.grey.shade200,size: 60),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: _height * 0.05,right: _width*0.81,),
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.camera_alt,color: Colors.grey,size: 20,),
                    ),
                  ),
                    Container(
                      margin: EdgeInsets.only(top: _height * 0.055,left: _width*0.14,),
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.white,
                      ),
                    )
                  ]
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: _height * 0.17, left: _width * 0.3),
                child: const Text(
                  "Your Name",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: _width * 0.87, top: _height * 0.06),
                child: const Icon(
                  IconlyLight.notification,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
