import 'package:class5work/fromvalidation.dart';
import 'package:class5work/langguage.dart';
import 'package:class5work/nav_page/add_page.dart';
import 'package:class5work/nav_page/main_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  await Hive.initFlutter();
  Box box = await Hive.openBox('contact-list');
  box.put("name", "shetu");
  print(box.get("name"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Langguage(),
      locale: Locale("eng", "us"),
      fallbackLocale: Locale("en", "us"),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.redHatMonoTextTheme(
            Theme.of(context).textTheme.apply(),
          )),
      home: FormValidation(),
    );
  }
}
