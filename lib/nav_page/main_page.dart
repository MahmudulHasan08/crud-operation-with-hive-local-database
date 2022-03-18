import 'package:class5work/nav_page/account_page.dart';
import 'package:class5work/nav_page/add_page.dart';
import 'package:class5work/nav_page/chat_page.dart';
import 'package:class5work/nav_page/home_page.dart';
import 'package:class5work/nav_page/my_adds_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  void onTap(int index) {
    setState(() {
      selectedItem = index;
    });
  }

  int selectedItem = 0;
  List _pages = [HomePage(), MyaddPage(), AddPage(), ChatPage(), AccountPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        unselectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: onTap,
        currentIndex: selectedItem,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket_outlined),
            title: Text("MyAdds"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            title: Text("Add"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined),
            title: Text("Chat"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            title: Text("Profile"),
          ),
        ],
      ),
    );
  }
}
