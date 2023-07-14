import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  static const String id = "search_page";

  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 30,
                color: Colors.black,
              ),
            ),
          ],
          backgroundColor: Colors.white,
          title: const Text(
            "Categories",
            style: TextStyle(
                fontSize: 25, color: Colors.black, fontWeight: FontWeight.w700),
          ),
          bottom: TabBar(
            indicatorColor: Colors.greenAccent,
            indicatorWeight: 3,
            labelColor: Colors.greenAccent,
            unselectedLabelColor: Colors.grey,
            labelStyle:
                const TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            tabs: [
              Container(
                margin: const EdgeInsets.only(bottom: 5),
                child: const Text("Categories"),
              ),
              const Text("Interests"),
            ],
          ),
        ),
        body: TabBarView(
          physics: const BouncingScrollPhysics(),
          children: [
            ListView(
              children: [
                _tabs("assets/images/4505770.jpg", "Graphics & Design",
                    "Logo & Brand Indetity, Gaming"),
                _tabs("assets/images/4110943.jpg", "Digital Marketing",
                    "Social Media Marketing,"),
                _tabs("assets/images/5449686.jpg", "Translating ",
                    "Logo & Brand Indetity, Gaming"),
                _tabs("assets/images/4727482.jpg", "Video Animation",
                    "Video Editing"),
                _tabs("assets/images/fiverr.jpeg", "Music Audio",
                    "Logo & Brand Indetity, Gaming"),
                _tabs("assets/images/fiverr.jpeg", "Graphics & Design",
                    "Logo & Brand Indetity, Gaming"),
                _tabs("assets/images/fiverr.jpeg", "Graphics & Design",
                    "Logo & Brand Indetity, Gaming"),
                _tabs("assets/images/fiverr.jpeg", "Graphics & Design",
                    "Logo & Brand Indetity, Gaming"),
                _tabs("assets/images/fiverr.jpeg", "Graphics & Design",
                    "Logo & Brand Indetity, Gaming"),
              ],
            ),
            ListView(
              children: [
                SizedBox(
                  height: _height * 0.03,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 13),
                      child: Text(
                        "Your interests",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      height: _height * 0.03,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 13),
                      child: Text(
                        "Choose your interests for a better discovery experiene",
                        style: TextStyle(fontSize: 22, color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      height: _height * 0.03,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 13),
                      height: _height * 0.06,
                      width: _width * 0.927,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.greenAccent),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Choose Interests",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: _height * 0.03,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 13.0),
                      child: Text(
                        "You may also like",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      height: _height * 0.03,
                    ),
                  ],
                ),
                _tabs("assets/images/fiverr.jpeg", "Graphics & Design",
                    "Logo & Brand Indetity, Gaming"),
                _tabs("assets/images/fiverr.jpeg", "Graphics & Design",
                    "Logo & Brand Indetity, Gaming"),
                _tabs("assets/images/fiverr.jpeg", "Graphics & Design",
                    "Logo & Brand Indetity, Gaming"),
                _tabs("assets/images/fiverr.jpeg", "Graphics & Design",
                    "Logo & Brand Indetity, Gaming"),
                _tabs("assets/images/fiverr.jpeg", "Graphics & Design",
                    "Logo & Brand Indetity, Gaming"),
                _tabs("assets/images/fiverr.jpeg", "Graphics & Design",
                    "Logo & Brand Indetity, Gaming"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _tabs(image, titl, subtitl) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return ListTile(
      leading: Image(image: AssetImage(image),),
      title: Text(titl),
      subtitle: Text(subtitl),
    );
  }
}
