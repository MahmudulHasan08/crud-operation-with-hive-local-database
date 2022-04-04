import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _categories = ["Food", "Electronics", "Goceries", "Dress"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.1),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello Shetu",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w600,
                    fontSize: 36.0,
                  ),
                ),
                Text(
                  "Let's gets something?",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 18.0,
                    color: Color(0xFF4F4C4C),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    height: 135,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          height: 135,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Color(0xFFF46D38),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 8,
                              top: 5,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "40% Off During \n Covid 19",
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 24.0,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Container(
                                    height: 70,
                                    child: Align(
                                      alignment: Alignment.bottomRight,
                                      child: Image.asset("images/veg.png"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 135,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Color(0xFF3861F4),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 8,
                              top: 5,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "40% Off During \n Covid 19",
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 24.0,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Container(
                                    height: 70,
                                    child: Align(
                                      alignment: Alignment.bottomRight,
                                      child: Image.asset("images/veg.png"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Top Categories",
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 18.0,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 18.0,
                          color: Color(0xFFF46D38),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 30,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _categories.length,
                      itemBuilder: (_, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFC4C4C4),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15, top: 4, bottom: 7),
                              child: Center(
                                child: Text(
                                  _categories[index],
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 18.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 1050,
                  child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 8,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 80,
                      ),
                      itemBuilder: (_, index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Container(
                            height: 180,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 30),
                                  blurRadius: 60,
                                  spreadRadius: 0,
                                  color: Color(0xFF393939).withOpacity(0.1),
                                ),
                              ],
                            ),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                    left: 20,
                                    top: -50,
                                    right: 20,
                                    child: Center(
                                        child: Image.asset("images/image.png")))
                              ],
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
