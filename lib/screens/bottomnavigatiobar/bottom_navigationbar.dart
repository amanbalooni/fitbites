import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import '../main-screens/home_page/home_screen.dart';
import '../main-screens/profile_screen.dart';
import '../main-screens/shoppingcart_screen.dart';
import '../main-screens/wishlist_screen.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({Key? key})
      : super(
    key: key,
  );

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  List pages = [
    const HomeScreen(),
    const WishListScreen(),
    const ShoppingCartScreen(),
    const ProfileScreen(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 10,
        selectedFontSize: 10,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xffffffff),
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: const Color(0xffFFBD4D),
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showUnselectedLabels: true,
        showSelectedLabels: true,
        elevation: 1,
        items: const [
          BottomNavigationBarItem(label: "Home", icon: Icon(FluentSystemIcons.ic_fluent_home_filled),),
          BottomNavigationBarItem(label: "Wish", icon: Icon(FluentSystemIcons.ic_fluent_heart_filled,)),
          BottomNavigationBarItem(label: "Cart", icon: Icon(Icons.notifications,)),
          BottomNavigationBarItem(label: "Profile", icon: Icon(FluentSystemIcons.ic_fluent_person_filled)),
        ],
      ),
    );
  }
}

