import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/post_pages/add_post_page.dart';
import 'package:instagram_clone/screens/home_page.dart';
import 'package:instagram_clone/screens/my_profile_page.dart';
import 'package:instagram_clone/screens/search_page.dart';
import 'package:instagram_clone/screens/shop_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  void _onTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
   List<Widget> _pageWidgets = [
    HomePage(), SearchPage(), AddPostPage(), ShopPage(), MyProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pageWidgets.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black,),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.black,),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined, color: Colors.black,),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: Colors.black,),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined, color: Colors.black,),
            title: Text("Home"),
          ),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 30,
        currentIndex: _selectedIndex,
        onTap: _onTapped,
        type: BottomNavigationBarType.shifting,
      ),
    );
  }
}
