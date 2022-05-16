import 'package:class5work/const/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  List<String> _categories = [
    'Food',
    'Electronics',
    'Groceries',
    'Dress',
    'Desktop elements',
    'Panjabi',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: Dimensions.font20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Shetu",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: Dimensions.font32,
                    ),
                  ),
                  Text(
                    "Let's gets something?",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: Dimensions.font15,
                      color: Color(0xFF4F4C4C),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
            Container(
              margin: EdgeInsets.only(left: Dimensions.height20),
              height: Dimensions.height130,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    //height 130 width 220
                    height: Dimensions.listViewSliderHeight,
                    width: Dimensions.listViewSliderWidth,
                    decoration: BoxDecoration(
                        color: Color(0xFFF46D38),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: Dimensions.height10,
                        top: Dimensions.height10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "40% Off During\nCovid 19",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: Dimensions.font18,
                              color: Colors.white,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              "images/veg.png",
                              height: Dimensions.listViewSliderImageHeight,
                              width: Dimensions.listViewSliderImageWidth,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Dimensions.width10,
                  ),
                  // 2nd container ...............................
                  Container(
                    height: Dimensions.listViewSliderHeight,
                    width: Dimensions.listViewSliderWidth,
                    decoration: BoxDecoration(
                        color: Color(0xFFF361F4),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: Dimensions.height10,
                        top: Dimensions.height10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "40% Off During\nCovid 19",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: Dimensions.font18,
                              color: Colors.white,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              "images/veg.png",
                              height: Dimensions.listViewSliderImageHeight,
                              width: Dimensions.listViewSliderImageWidth,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Dimensions.width10,
                  ),

                  //3rd..............................
                  Container(
                    height: Dimensions.listViewSliderHeight,
                    width: Dimensions.listViewSliderWidth,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: Dimensions.height10,
                        top: Dimensions.height10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "40% Off During\nCovid 19",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: Dimensions.font18,
                              color: Colors.white,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              "images/veg.png",
                              height: Dimensions.listViewSliderImageHeight,
                              width: Dimensions.listViewSliderImageWidth,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.height10,
            ),
            Container(
              margin: EdgeInsets.only(left: Dimensions.height10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: Dimensions.height10,
                    ),
                    child: Text(
                      "Top Categories",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: Dimensions.font18,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: Dimensions.height10,
                    ),
                    child: Text(
                      "View All",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: Dimensions.font18,
                        color: Color(0xFFFF4800),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.height10,
            ),
            Padding(
              padding: EdgeInsets.only(left: Dimensions.height10),
              child: Container(
                margin: EdgeInsets.only(left: Dimensions.height10),
                height: Dimensions.height30,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _categories.length,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: Dimensions.height15),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(
                            Radius.circular(Dimensions.height20),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: Dimensions.height12,
                            right: Dimensions.height12,
                            top: Dimensions.height8,
                            bottom: Dimensions.height8,
                          ),
                          child: Center(child: Text(_categories[index])),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: Dimensions.height30,
            ),
          ],
        ),
      ),
    );
  }
}
