import 'package:flutter/material.dart';
import 'package:oua_app/navpages/favorites_page.dart';
import 'package:oua_app/navpages/home_page.dart';
import 'package:oua_app/navpages/profile_page.dart';
import 'package:oua_app/navpages/locations_page.dart';
import 'chat_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    LocationsPage(),
    ChatPage(),
    FavoritesPage(),
    ProfilePage(),
  ];
  int currentIndex=0;
  void onTap(int index){
  setState(() {
    currentIndex=index;
  });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        unselectedFontSize: 0,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(label:("Home"), icon: Icon(Icons.home)),
          BottomNavigationBarItem(label:("Locate"), icon: Icon(Icons.place)),
          BottomNavigationBarItem(label:("Chat"), icon: Icon(Icons.sms)),
          BottomNavigationBarItem(label:("Favorites"), icon: Icon(Icons.favorite)),
          BottomNavigationBarItem(label:("Profile"), icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
