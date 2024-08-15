import 'package:flutter/material.dart';
import 'package:getpayin/Components/Nav_Item.dart';
import 'package:getpayin/Pages/Home.dart';
import 'package:getpayin/Pages/Profile.dart';
import 'package:getpayin/Pages/Wallet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  final int index;
  const MyApp({super.key, this.index = 0});

  @override
  // ignore: no_logic_in_create_state
  State<MyApp> createState() => _MyAppState(index: index);
}

class _MyAppState extends State<MyApp> {
  final int index;
  _MyAppState({this.index = 0}) {
    _selectedIndex = index;
  }
  var _selectedIndex = 0;
  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = <Widget>[
    const Home(),
    const Wallet(),
    const Text("Analytics"),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Getpayin",
      theme: ThemeData(primaryColor: Colors.grey.shade100),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.white,
          selectedItemColor: const Color.fromRGBO(44, 49, 49, 1),
          unselectedItemColor: const Color.fromARGB(255, 160, 160, 160),
          items: <BottomNavigationBarItem>[
            BottomItem("images/tabler--home-filled.svg",
                "images/tabler--home.svg", "Home", _selectedIndex == 0),
            BottomItem("images/LetsIconsWalletAltFill.svg",
                "images/uit--wallet.svg", "Wallet", _selectedIndex == 1),
            BottomItem(
                "images/MaterialSymbolsAnalytics.svg",
                "images/MaterialSymbolsAnalyticsOutline.svg",
                "Analytics",
                _selectedIndex == 2),
            BottomItem("images/PhUserFill.svg", "images/PhUser.svg", "Profile",
                _selectedIndex == 3),
          ],
        ),
      ),
    );
  }
}
