
import 'dart:ui';

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
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  // final _navigatorKey = GlobalKey<NavigatorState>();
  int _currentIndex = 0;
   final List<Widget> _children = <Widget>[
    HomeBody(),
    SearchScreen(),
    OrderCardScreen(),
    NotificationScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf4f4f4),
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: IconButton(
          icon: Icon(Icons.menu),color: AppColors.black, onPressed: (){_scaffoldKey.currentState.openDrawer();}
        ),
      ),
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
      drawer: Drawer(
        child: ListView(  
          padding:EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xffffe6db),
              ),
              accountName: Text("Online Shop", style: TextStyle(color: Colors.black),),
              accountEmail: Text("onlineshop@gmail.com", style: TextStyle(color: Colors.black),),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color(0xffff6633),
                child: Text("ONS",style: TextStyle(fontSize: 25.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home), title: Text("Home", style: TextStyle(color: Colors.black),),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.search), title: Text("Search",style: TextStyle(color: Colors.black),),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket), title: Text("CardOrder",style: TextStyle(color: Colors.black),),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications), title: Text("Notification",style: TextStyle(color: Colors.black),),
              onTap: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
  //set for navigation bar
    void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}