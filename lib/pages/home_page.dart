import 'package:flutter/material.dart';
import 'package:netflix_clone/json/home_json.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 5, 1, 1),
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: SingleChildScrollView(
          child: Stack(
        children: [
          Container(
            //first stack container
            // height: size.height - 80,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 500,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/banner.webp"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: 500,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                            Colors.black.withOpacity(0.85),
                            Colors.black.withOpacity(0),
                          ],
                              end: Alignment.topCenter,
                              begin: Alignment.bottomCenter)),
                    ),
                    Container(
                        height: 500,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 50, right: 50),
                              child: Image.asset(
                                "assets/images/title_img.webp",
                                width: 300,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Exciting - Sci-Fi Drama - Adventure",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 25,
                        ),
                        SizedBox(height: 5),
                        Text(
                          "My list",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: Colors.white),
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 13, left: 8, top: 2, bottom: 2),
                        child: Row(
                          children: [
                            Icon(Icons.play_arrow),
                            SizedBox(width: 5),
                            Text("Play",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600))
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.info_outline,
                          color: Colors.white,
                          size: 25,
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Info",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  // margin: EdgeInsets.only(right: 270),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My List",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
                            children: List.generate(mylist.length, (index) {
                              return Container(
                                margin: EdgeInsets.only(right: 8),
                                width: 110,
                                height: 160,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(mylist[index]['img']),
                                        fit: BoxFit.cover),
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(6)),
                              );
                            }),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Second list", //second row
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
                            children: List.generate(mylist.length, (index) {
                              return Container(
                                margin: EdgeInsets.only(right: 8),
                                width: 110,
                                height: 160,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(mylist[index]['img']),
                                        fit: BoxFit.cover),
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(6)),
                              );
                            }),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Image.asset(
                          "assets/images/logo.ico",
                          width: 35,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.collections_bookmark),
                            color: Colors.white,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/images/profile.jpeg',
                              width: 26,
                              fit: BoxFit.cover,
                            ),
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'TV Shows',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      Text(
                        'Movies',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      Row(
                        children: [
                          Text(
                            'Catogeries',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(),
        ],
      )),
    );
  }
}
