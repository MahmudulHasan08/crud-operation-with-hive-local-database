import 'package:class5work/const/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'dart:io';

class MyaddPage extends StatefulWidget {
  const MyaddPage({Key? key}) : super(key: key);

  @override
  State<MyaddPage> createState() => _MyaddPageState();
}

class _MyaddPageState extends State<MyaddPage> with TickerProviderStateMixin {
  //banner ad

  final BannerAd myBanner = BannerAd(
    adUnitId: Platform.isAndroid
        //test ad unit id
        ? 'ca-app-pub-3940256099942544/6300978111'
        // admob ad unit id
        //     ? 'ca-app-pub-9322470273107945/3238330837'
        : 'ca-app-pub-3940256099942544/2934735716',
    size: AdSize.banner,
    request: AdRequest(),
    listener: BannerAdListener(
      // Called when an ad is successfully received.
      onAdLoaded: (Ad ad) => print('Ad loaded.'),
      // Called when an ad request failed.
      onAdFailedToLoad: (Ad ad, LoadAdError error) {
        // Dispose the ad here to free resources.

        ad.dispose();
        print('Ad failed to load: $error');
      },
      // Called when an ad opens an overlay that covers the screen.
      onAdOpened: (Ad ad) => print('Ad opened.'),
      // Called when an ad removes an overlay that covers the screen.
      onAdClosed: (Ad ad) => print('Ad closed.'),
      // Called when an impression occurs on the ad.
      onAdImpression: (Ad ad) => print('Ad impression.'),
    ),
  );

  // intertitial ad
  final intertitialAds = InterstitialAd.load(
      adUnitId: Platform.isAndroid
          //test intertitial ad unit id
          ? 'ca-app-pub-3940256099942544/1033173712'
          //admob intertitial ad unit id
          // ? 'ca-app-pub-9322470273107945/9922039126'
          : 'ca-app-pub-3940256099942544/4411468910',
      request: AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (InterstitialAd ad) {
          print("loadded");
          ad.show();
          Center(
            child: CircularProgressIndicator(),
          );
        },
        onAdFailedToLoad: (LoadAdError error) {
          print('InterstitialAd failed to load: $error');
        },
      ));

  @override
  void initState() {
    intertitialAds;
    super.initState();
    myBanner.load();
  }

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 70,
          left: 20,
        ),
        child: Column(
          children: [
            Container(
              child: TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Colors.black,
                  labelStyle: TextStyle(
                    fontSize: Dimensions.font18,
                  ),
                  unselectedLabelColor: Colors.grey,
                  controller: _tabController,
                  tabs: [
                    Tab(
                      text: "Banner",
                    ),
                    Tab(
                      text: "interstitial",
                    ),
                    Tab(
                      text: "Native",
                    ),
                  ]),
            ),
            Container(
              height: Dimensions.height300,
              width: double.maxFinite,
              child: TabBarView(controller: _tabController, children: [
                Container(
                  alignment: Alignment.center,
                  height: Dimensions.height200,
                  color: Colors.grey[200],
                  child: AdWidget(ad: myBanner),
                ),
                Container(
                  height: Dimensions.height200,
                  color: Colors.grey[200],
                  child: Center(child: Text("none")),
                ),
                Container(
                  height: Dimensions.height200,
                  color: Colors.grey[200],
                  child: Center(child: Text("Naitve")),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
