
import 'package:flutter/material.dart';
import 'package:productview/colors/colors.dart';
import 'package:productview/screens/ordercard_screen.dart';
import 'package:productview/screens/search_screen.dart';
import 'package:productview/widgets/my_homebody.dart';
import 'notifiction_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final _navigatorKey = GlobalKey<NavigatorState>();
  int _currentIndex = 0;
   final List<Widget> _children = <Widget>[
    HomeBody(),
    SearchScreen(),
    OrderCardScreen(),
    NotificationScreen(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children [_currentIndex],
      //NavigationBar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: AppColors.orage, 
        currentIndex: _currentIndex,
        iconSize: 40,
        elevation: 5,
        onTap: onTabTapped,
        // (index) {
        //   _navigatorKey.currentState.pushNamed(_children[index]);
        // },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_repair_service, color: AppColors.grey,),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: AppColors.grey,),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket, color: AppColors.grey,),
            label: "Add Card", 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications, color: AppColors.grey,), 
            label: "Notification",
          ),
        ],
      ),
      // Drawer home page
    );
  }
  //set for navigation bar
    void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}