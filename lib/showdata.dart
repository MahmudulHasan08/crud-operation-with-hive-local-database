import 'package:class5work/helper/get_helper.dart';
import 'package:flutter/material.dart';

import 'model/get.dart';

class ShowData extends StatefulWidget {
  const ShowData({Key? key}) : super(key: key);

  @override
  State<ShowData> createState() => _ShowDataState();
}

class _ShowDataState extends State<ShowData> {
  List<Get>? get;
  UsergetData() async {
    get = await GetHelper().getData();
  }

  @override
  Widget build(BuildContext context) {
    UsergetData();
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 500,
            child: ListView.builder(itemBuilder: (_, index) {
              return Card(
                child: ListTile(
                  title: Text(
                    get![index].name.toString(),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
