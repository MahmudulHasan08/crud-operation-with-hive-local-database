import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> with TickerProviderStateMixin {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "My Adds",
          style: TextStyle(
            fontFamily: 'Raleway',
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              child: TabBar(
                  labelColor: Colors.black,
                  controller: _tabController,
                  indicatorColor: Colors.grey[500],
                  tabs: [
                    Tab(
                        text: "My Ads",
                        icon: Icon(Icons.shopping_basket_outlined)),
                    Tab(
                        text: "My Favourites",
                        icon: Icon(Icons.favorite_border_outlined)),
                  ]),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 700,
              width: double.maxFinite,
              child: TabBarView(controller: _tabController, children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: Container(
                    height: 300,
                    child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 6,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 30,
                          childAspectRatio: 170 / 220,
                        ),
                        itemBuilder: (_, index) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: Container(
                              clipBehavior: Clip.none,
                              height: 170,
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
                                    top: -50,
                                    left: 20,
                                    right: 20,
                                    child: Center(
                                      child: Image.asset(
                                        "images/image.png",
                                        height: 130,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 90,
                                    left: 20,
                                    child: Text(
                                      "Apple Watch",
                                      style: TextStyle(
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ),
                                  const Positioned(
                                    top: 115,
                                    left: 20,
                                    child: Text(
                                      "Series 6. Black",
                                      style: TextStyle(
                                        fontFamily: 'Raleway',
                                        fontSize: 16.0,
                                        color: Color(0xFF4F4C4C),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 130,
                                    left: 20,
                                    child: Text(
                                      "\$359",
                                      style: TextStyle(
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18.0,
                                        color: Color(0xFF5956E9),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ),
                ListView.builder(
                    itemCount: 4,
                    itemBuilder: (_, index) {
                      return Container(
                        height: 80,
                        child: Card(
                          color: Colors.white,
                          elevation: 4.0,
                          child: ListTile(
                            leading: Image.asset(
                              "images/image.png",
                              height: 40,
                              width: 35,
                              fit: BoxFit.cover,
                            ),
                            title: Text(
                              "Apple Watch",
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                              ),
                            ),
                            subtitle: Text(
                              "Series 6. Black",
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                fontSize: 16.0,
                                color: Color(0xFF4F4C4C),
                              ),
                            ),
                            trailing: Text(
                              "\$359",
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w600,
                                fontSize: 18.0,
                                color: Color(0xFF5956E9),
                              ),
                            ),
                          ),
                        ),
                      );
                    })
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
