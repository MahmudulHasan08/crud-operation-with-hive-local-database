import 'package:class5work/const/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';
import 'package:get/get.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  TextEditingController _textEditingController = TextEditingController();
  TextEditingController _updateController = TextEditingController();
  Box? contractBox;
  @override
  void initState() {
    super.initState();
    contractBox = Hive.box("contact-list");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          automaticallyImplyLeading: false,
          title: Text(
            "Local Database Hive",
            style: TextStyle(
              fontSize: Dimensions.font18,
              color: Colors.blue,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(Dimensions.height10),
          child: SingleChildScrollView(
            child: Column(
              children: [
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
                    onTap: () {},
                    controller: _textEditingController,
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
                      hintText: "User Phone Number",
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
                  height: Dimensions.height50,
                  width: Dimensions.height300,
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
                    onPressed: () async {
                      final userInput = _textEditingController.text;
                      print(userInput);
                      await contractBox!.add(userInput);
                      print("added");
                    },
                    child: Text(
                      "Add User Number",
                      style: TextStyle(
                        fontSize: Dimensions.font20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Dimensions.height20,
                ),
                Container(
                    height: Dimensions.height400,
                    child: ValueListenableBuilder(
                        valueListenable: Hive.box("contact-list").listenable(),
                        builder: (_, box, widget) {
                          return ListView.builder(
                              itemCount: contractBox!.keys.toList().length,
                              itemBuilder: (_, index) {
                                return Card(
                                  child: ListTile(
                                    dense: true,
                                    title: Text(
                                        contractBox!.getAt(index).toString()),
                                    trailing: Container(
                                      width: Dimensions.height130,
                                      child: Row(
                                        children: [
                                          IconButton(
                                            onPressed: () {
                                              Get.defaultDialog(
                                                  title: "Update",
                                                  content: Container(
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      Dimensions
                                                                          .height30),
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      Dimensions
                                                                          .height10,
                                                                  offset:
                                                                      Offset(
                                                                          1, 1),
                                                                  color: Colors
                                                                      .grey
                                                                      .withOpacity(
                                                                          0.2),
                                                                )
                                                              ]),
                                                          child: TextFormField(
                                                            onTap: () {},
                                                            controller:
                                                                _updateController,
                                                            keyboardType:
                                                                TextInputType
                                                                    .number,
                                                            decoration:
                                                                InputDecoration(
                                                              border:
                                                                  OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                        Dimensions
                                                                            .height30),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Colors
                                                                      .white,
                                                                  width: 1.0,
                                                                ),
                                                              ),
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                        Dimensions
                                                                            .height30),
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Colors
                                                                      .white,
                                                                  width: 1.0,
                                                                ),
                                                              ),
                                                              hintText:
                                                                  "Update User Number",
                                                              prefixIcon: Icon(
                                                                Icons.phone,
                                                                color:
                                                                    Colors.blue,
                                                              ),
                                                              hintStyle:
                                                                  TextStyle(
                                                                fontSize:
                                                                    Dimensions
                                                                        .font20,
                                                              ),
                                                            ),
                                                            validator: (value) {
                                                              if (value!
                                                                  .isEmpty) {
                                                                return "Email can't be empty";
                                                              } else if (value
                                                                      .length >
                                                                  20) {
                                                                return "can't be more then 5";
                                                              } else {
                                                                return null;
                                                              }
                                                            },
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: Dimensions
                                                              .height20,
                                                        ),
                                                        Container(
                                                          height: Dimensions
                                                              .height50,
                                                          width: Dimensions
                                                              .height300,
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      Dimensions
                                                                          .height30),
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      20,
                                                                  offset:
                                                                      Offset(
                                                                          1, 1),
                                                                  color: Colors
                                                                      .grey
                                                                      .withOpacity(
                                                                          0.2),
                                                                )
                                                              ]),
                                                          child: FlatButton(
                                                            onPressed:
                                                                () async {
                                                              contractBox!.putAt(
                                                                  index,
                                                                  _updateController
                                                                      .text);
                                                              Get.back();
                                                            },
                                                            child: Text(
                                                              "Update User Number",
                                                              style: TextStyle(
                                                                fontSize:
                                                                    Dimensions
                                                                        .font20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color:
                                                                    Colors.blue,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ));
                                            },
                                            icon: Icon(
                                              Icons.edit_outlined,
                                              color: Colors.greenAccent,
                                              size: Dimensions.height20,
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () async {
                                              await contractBox!
                                                  .deleteAt(index);
                                            },
                                            icon: Icon(
                                              Icons.remove_circle_outline,
                                              color: Colors.redAccent,
                                              size: Dimensions.height20,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              });
                        })),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
