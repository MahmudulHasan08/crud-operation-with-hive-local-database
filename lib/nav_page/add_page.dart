import 'package:class5work/const/dimensions.dart';
import 'package:class5work/nav_page/details_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  double _height = Dimensions.height100;
  double _width = Dimensions.height200;
  Color _color = Colors.grey;
  double _fontSize = Dimensions.font20;
  Color _textColor = Colors.black87;
  double _top = 0;
  double _bottom = 0;
  AlignmentGeometry _alignment = Alignment.centerRight;
  double _opacity = 1;

  void animatedContainer() {
    setState(() {
      _height = Dimensions.height200;
      _width = Dimensions.height300;
      _color = Colors.blueGrey;
      Get.snackbar(
        "Container",
        "Successfully done",
        backgroundColor: Colors.blue,
        colorText: Colors.white,
      );
    });
  }

  void animatedText() {
    setState(() {
      _fontSize = Dimensions.font28;
      _textColor = Colors.blue;
      Fluttertoast.showToast(
        msg: "Animated text work succesfully",
        backgroundColor: Colors.blue,
        textColor: Colors.white,
      );
    });
  }

  void animatedPositioned() {
    setState(() {
      _top = Dimensions.height50;
    });
  }

  void animatedPositionedbottom() {
    setState(() {
      _bottom = Dimensions.height50;
    });
  }

  @override
  void initState() {
    super.initState();
    print("screenHeight = " + Dimensions.screenHeight.toString());
    print("screenwidth = " + Dimensions.screenWidth.toString());
  }

  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size.height);
    // print(MediaQuery.of(context).size.width);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(Dimensions.height15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: Dimensions.height250,
                  width: Dimensions.height250,
                  child: Lottie.asset("images/lf30_editor_wbui4sok.json",
                      alignment: Alignment.center),
                ),
                SizedBox(
                  height: Dimensions.height50,
                ),
                Text(
                  "app_name".tr,
                  style: TextStyle(fontSize: Dimensions.font40),
                ),
                Text(
                  "app_title".tr,
                  style: TextStyle(fontSize: Dimensions.font40),
                ),
                SizedBox(
                  height: Dimensions.height50,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Get.updateLocale(Locale("bn", "bd"));
                      },
                      child: Text("Bangla"),
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.updateLocale(Locale("en", "us"));
                      },
                      child: Text("English"),
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: AnimatedContainer(
                        height: _height,
                        width: _width,
                        duration: Duration(seconds: 2),
                        curve: Curves.bounceInOut,
                        decoration: BoxDecoration(
                          color: _color,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: InkWell(
                          onTap: () {
                            Get.to(() => DetailsImage());
                          },
                          child: Hero(
                              tag: "1",
                              child: Lottie.asset(
                                "images/lf30_editor_wbui4sok.json",
                              )),
                        ),
                        // onEnd: () {
                        //   setState(() {
                        //     _height = _height == 200 ? 300 : 200;
                        //     _width = _width == 300 ? 350 : 300;
                        //     _color = _color == Colors.blueGrey
                        //         ? Colors.blue
                        //         : Colors.blueGrey;
                        //   });
                        // },
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    ElevatedButton(
                      onPressed: () => animatedContainer(),
                      child: Text(
                        "Animated Container",
                        style: TextStyle(
                          fontSize: Dimensions.font18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    AnimatedDefaultTextStyle(
                      child: Text("Junior Flutter Developer"),
                      style: TextStyle(
                        fontSize: _fontSize,
                        color: _textColor,
                      ),
                      duration: Duration(seconds: 2),
                      curve: Curves.decelerate,
                    ),
                    SizedBox(
                      height: Dimensions.height15,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        animatedText();
                      },
                      child: Text(
                        "Animated Text",
                        style: TextStyle(
                          fontSize: Dimensions.font18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height15,
                    ),
                    Container(
                      height: Dimensions.height150,
                      width: Dimensions.height400,
                      color: Colors.grey[400],
                      child: Stack(
                        children: [
                          AnimatedPositioned(
                            top: _top,

                            // right: _,
                            child: ElevatedButton(
                              onPressed: () => animatedPositioned(),
                              child: Text(
                                "Animated Stack_Positioned",
                                style: TextStyle(
                                  fontSize: Dimensions.font18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            duration: Duration(seconds: 2),
                            onEnd: () {
                              setState(() {
                                _top = _top == Dimensions.height50
                                    ? 0
                                    : Dimensions.height50;
                              });
                            },
                          ),
                          AnimatedPositioned(
                            bottom: _bottom,

                            // right: _,
                            child: ElevatedButton(
                              onPressed: () => animatedPositionedbottom(),
                              child: Text(
                                "Animated Stack_Positioned",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            duration: Duration(seconds: 2),
                            onEnd: () {
                              setState(() {
                                _bottom = _bottom == Dimensions.height50
                                    ? 0
                                    : Dimensions.height50;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height15,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _alignment = Alignment.centerLeft;
                          _opacity = 0.2;
                        });
                      },
                      child: Container(
                        height: Dimensions.height55,
                        width: Dimensions.height400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue,
                        ),
                        child: AnimatedAlign(
                          duration: Duration(seconds: 3),
                          alignment: _alignment,
                          child: AnimatedOpacity(
                              opacity: _opacity,
                              duration: Duration(seconds: 3),
                              child: Container(
                                padding:
                                    EdgeInsets.only(right: Dimensions.height10),
                                child: Text(
                                  "Animation of ALign",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: Dimensions.font20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              onEnd: () {
                                setState(() {
                                  _opacity = _opacity == 0.2 ? 1 : 0.2;
                                });
                              }),
                          onEnd: () {
                            setState(() {
                              _alignment = _alignment == Alignment.centerLeft
                                  ? Alignment.centerRight
                                  : Alignment.centerLeft;
                            });
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
