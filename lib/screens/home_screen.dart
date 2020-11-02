import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:productview/colors/colors.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xFFf4f4f4),
      key: _scaffoldKey,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                top: 30,
                left: 20,
                right: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.menu), 
                      onPressed: (){_scaffoldKey.currentState.openDrawer();}
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 10,
                top: 25,
              ),
              child:Column(
                children:<Widget>[
                  Container(
                    padding: EdgeInsets.only(
                      right: 80,
                    ),
                    child: Text(
                      "Our",
                      style: TextStyle(fontSize: 30,color: Color(0xFF4d4d4d),),
                    ),
                  ),
                    Text(
                      "Products",
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                    ),
                ],
              ),
            ),
            //list container
              // padding: EdgeInsets.only(
              //   top: 30,
              //   left: 15,
              // ),
              SizedBox(
                width: 500,
                height: 70,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: AppColors.lightGrey,
                      ),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(5),),
                        Image.asset("assets/images/c.jpeg", width: 20,height: 25,),
                        Text(" Sneakers", style: TextStyle(color: Colors.black),),
                      ], 
                    ), 
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: AppColors.lightGrey,
                      ),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(2),),
                        Image.asset("assets/images/d.jpg", width: 20,height: 25,),
                        Text(" Watchs", style: TextStyle(color: Colors.black),),
                      ], 
                    ), 
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: AppColors.lightGrey,
                      ),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(2),),
                        Image.asset("assets/images/h.jpg", width: 20,height: 25,),
                        Text(" Jakets", style: TextStyle(color: Colors.black),),
                      ], 
                    ), 
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: AppColors.lightGrey,
                      ),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(2),),
                        Image.asset("assets/images/h.jpg", width: 20,height: 25,),
                        Text(" Jakets", style: TextStyle(color: Colors.black),),
                      ], 
                    ), 
                  ),
                ],
              ),
            ),
            SizedBox( height: 30,),
            SizedBox(
              width: 500,
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    height: 250,
                    width: 150,
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(
                    ),
                    margin: EdgeInsets.only(right: 20,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.white,
                        width: 5,
                      ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Image.asset("assets/images/a.jpg",),
                            Expanded(
                              child: Container(
                                color: AppColors.white,
                                padding: EdgeInsets.only(
                                  top: 10,
                                  bottom: 10,
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Title(color: Colors.black, child: Text("Nike AIR Max 200",
                                      style: TextStyle(fontWeight: FontWeight.bold),),
                                    ),
                                    SizedBox(height: 10,),
                                    Text("Trending Now",style: TextStyle(color: AppColors.orage),),
                                    SizedBox(height: 10,),
                                    Text("240.00",style: TextStyle(color: AppColors.black, fontSize: 15),),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 0,
                          child: IconButton(
                            icon: Icon(Icons.favorite), onPressed: (){},
                            color: AppColors.orage,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 250,
                    width: 150,
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(
                    ),
                    margin: EdgeInsets.only(right: 20,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.white,
                        width: 5,
                      ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Image.asset("assets/images/a.jpg",),
                            Expanded(
                              child: Container(
                                color: AppColors.white,
                                padding: EdgeInsets.only(
                                  top: 10,
                                  bottom: 10,
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Title(color: Colors.black, child: Text("Nike AIR Max 200",
                                      style: TextStyle(fontWeight: FontWeight.bold),),
                                    ),
                                    SizedBox(height: 10,),
                                    Text("Trending Now",style: TextStyle(color: AppColors.orage),),
                                    SizedBox(height: 10,),
                                    Text("240.00",style: TextStyle(color: AppColors.black, fontSize: 15),),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 0,
                          child: IconButton(
                            icon: Icon(Icons.favorite), onPressed: (){},
                            color: AppColors.orage,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 250,
                    width: 150,
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(
                    ),
                    margin: EdgeInsets.only(right: 20,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.white,
                        width: 5,
                      ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Image.asset("assets/images/a.jpg",),
                            Expanded(
                              child: Container(
                                color: AppColors.white,
                                padding: EdgeInsets.only(
                                  top: 10,
                                  bottom: 10,
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Title(color: Colors.black, child: Text("Nike AIR Max 200",
                                      style: TextStyle(fontWeight: FontWeight.bold),),
                                    ),
                                    SizedBox(height: 10,),
                                    Text("Trending Now",style: TextStyle(color: AppColors.orage),),
                                    SizedBox(height: 10,),
                                    Text("240.00",style: TextStyle(color: AppColors.black, fontSize: 15),),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 0,
                          child: IconButton(
                            icon: Icon(Icons.favorite), onPressed: (){},
                            color: AppColors.orage,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            
            // SizedBox(
            //   width: 200,
            //   height: 100,
            //   child: ListView(
            //         scrollDirection: Axis.horizontal,
            //     children: <Widget>[
            //       Container(
            //         width: 100,
            //         color: Colors.grey,
            //       ),
            //       Container(
            //         width: 200,
            //         color: Colors.blueGrey,
            //       ),
            //       Container(
            //         width: 200,
            //         color: Colors.green,
            //       ),
            //       Container(
            //         width: 200,
            //         color: Colors.grey,
            //       )
            //     ],
            //   ),
            // )
          ],
        ), 
      ),
      //NavigationBar
      bottomNavigationBar: BottomNavigationBar(
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
            label: "shopping Card", 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: AppColors.grey,), 
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
              leading: Icon(Icons.favorite), title: Text("Notification",style: TextStyle(color: Colors.black),),
              onTap: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}