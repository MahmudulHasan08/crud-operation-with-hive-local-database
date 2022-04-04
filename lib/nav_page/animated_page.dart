import 'package:class5work/const/dimensions.dart';
import 'package:flutter/material.dart';

class Animated_Page extends StatefulWidget {
  const Animated_Page({Key? key}) : super(key: key);

  @override
  State<Animated_Page> createState() => _Animated_PageState();
}

class _Animated_PageState extends State<Animated_Page>
    with TickerProviderStateMixin {
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
            fontSize: Dimensions.font20,
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
              height: Dimensions.height30,
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
              height: Dimensions.height30,
            ),
            Container(
              height: Dimensions.height700,
              width: double.maxFinite,
              child: TabBarView(controller: _tabController, children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: Dimensions.height30,
                      left: Dimensions.height20,
                      right: Dimensions.height20),
                  child: Container(
                    height: Dimensions.height300,
                    child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 6,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: Dimensions.height10,
                          mainAxisSpacing: Dimensions.height30,
                          childAspectRatio:
                              Dimensions.height170 / Dimensions.height220,
                        ),
                        itemBuilder: (_, index) {
                          return Padding(
                            padding: EdgeInsets.only(top: Dimensions.height50),
                            child: Container(
                              clipBehavior: Clip.none,
                              height: Dimensions.height170,
                              width: Dimensions.height150,
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
                                    top: -Dimensions.height50,
                                    left: Dimensions.height20,
                                    right: Dimensions.height20,
                                    child: Center(
                                      child: Image.asset(
                                        "images/image.png",
                                        height: Dimensions.height130,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: Dimensions.height90,
                                    left: Dimensions.height20,
                                    child: Text(
                                      "Apple Watch",
                                      style: TextStyle(
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w600,
                                        fontSize: Dimensions.font20,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: Dimensions.height35,
                                    left: Dimensions.height20,
                                    child: Text(
                                      "Series 6. Black",
                                      style: TextStyle(
                                        fontFamily: 'Raleway',
                                        fontSize: Dimensions.font16,
                                        color: Color(0xFF4F4C4C),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: Dimensions.height15,
                                    left: Dimensions.height20,
                                    child: Text(
                                      "\$359",
                                      style: TextStyle(
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w600,
                                        fontSize: Dimensions.font18,
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
                        height: Dimensions.height80,
                        child: Card(
                          color: Colors.white,
                          elevation: 4.0,
                          child: ListTile(
                            leading: Image.asset(
                              "images/image.png",
                              height: Dimensions.height40,
                              width: Dimensions.width35,
                              fit: BoxFit.cover,
                            ),
                            title: Text(
                              "Apple Watch",
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w600,
                                fontSize: Dimensions.font16,
                              ),
                            ),
                            subtitle: Text(
                              "Series 6. Black",
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                fontSize: Dimensions.font16,
                                color: Color(0xFF4F4C4C),
                              ),
                            ),
                            trailing: Text(
                              "\$359",
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w600,
                                fontSize: Dimensions.font18,
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
