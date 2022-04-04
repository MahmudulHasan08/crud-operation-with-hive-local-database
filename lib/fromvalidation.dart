import 'package:class5work/const/dimensions.dart';
import 'package:class5work/nav_page/main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormValidation extends StatelessWidget {
  FormValidation({Key? key}) : super(key: key);
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                //formvalidation
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.height30),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            offset: Offset(1, 1),
                            spreadRadius: 7,
                            color: Colors.grey.withOpacity(0.2))
                      ]),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(Dimensions.height30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(Dimensions.height30),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1.0,
                          )),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(Dimensions.height30)),
                      hintText: "Email",
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.blue,
                      ),
                      hintStyle: TextStyle(
                        fontSize: Dimensions.font20,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email can't be empty";
                      } else if (value.length > 20) {
                        return "can't be more then 5";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(Dimensions.height30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.2))
                      ]),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(Dimensions.height30),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(Dimensions.height30),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(Dimensions.height30),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1.0,
                            )),
                        hintText: "Age",
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.blue,
                        ),
                        hintStyle: TextStyle(
                          fontSize: Dimensions.font20,
                        )),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email can't be empty";
                      } else if (value.length > 20) {
                        return "can't be more then 5";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: Dimensions.height15,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(Dimensions.height30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.2),
                        )
                      ]),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(Dimensions.height30),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(Dimensions.height30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0,
                        ),
                      ),
                      hintText: "Phone Number",
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Colors.blue,
                      ),
                      hintStyle: TextStyle(
                        fontSize: Dimensions.font20,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email can't be empty";
                      } else if (value.length > 20) {
                        return "can't be more then 5";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: Dimensions.height20,
                ),
                Container(
                  height: Dimensions.submitButtonHeight,
                  width: Dimensions.submitButtonWidth,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(Dimensions.height30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 20,
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.2),
                        )
                      ]),
                  child: FlatButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        Get.to(() => MainPage());
                      }
                    },
                    child: Text(
                      "Submit Button",
                      style: TextStyle(
                        fontSize: Dimensions.font20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
