import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DetailsImage extends StatelessWidget {
  const DetailsImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Images"),
          centerTitle: true,
        ),
        body: Center(
          child: Hero(
            tag: "1",
            child: Lottie.asset(
              "images/lf30_editor_wbui4sok.json",
            ),
          ),
        ),
      ),
    );
  }
}
