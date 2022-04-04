import 'package:class5work/const/dimensions.dart';
import 'package:class5work/profileview.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          physics: NeverScrollableScrollPhysics(),
          headerSliverBuilder: (context, isScolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                collapsedHeight: Dimensions.height320,
                expandedHeight: Dimensions.height320,
                flexibleSpace: ProfileView(),
              )
            ];
          },
          body: Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 50,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: Dimensions.height10,
                  mainAxisSpacing: Dimensions.height40,
                  childAspectRatio: Dimensions.height170 / Dimensions.height220,
                ),
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 50),
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
                            top: -50,
                            left: 20,
                            right: 20,
                            child: Center(
                              child: Image.asset(
                                "images/image.png",
                                height: Dimensions.height130,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 50,
                            left: 20,
                            child: Text(
                              "Apple Watch",
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w600,
                                fontSize: Dimensions.font20,
                              ),
                            ),
                          ),
                          const Positioned(
                            bottom: 30,
                            left: 20,
                            child: Text(
                              "Series 6. Black",
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color(0xFF4F4C4C),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 5,
                            left: 20,
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
      ),
    );
  }
}
