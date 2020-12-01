import 'package:flutter/material.dart';
import 'package:productview/colors/colors.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}
class _NotificationScreenState extends State<NotificationScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  
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
      backgroundColor: Color(0xFFf4f4f4),
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu,size: 30,),color: AppColors.black, onPressed: (){_scaffoldKey.currentState.openDrawer();}
        ),
        title: Text("Notification", style: TextStyle(fontSize: 30,color: Color(0xFF4d4d4d),),),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: IconButton(icon: Icon(Icons.search_sharp, size: 30, color: AppColors.black,), onPressed: (){}),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top:10,),
              child: Wrap(
                children: <Widget>[
                  //Icon(Icons.account_circle, size: 70,color: AppColors.orage,),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("ONS Shop",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: AppColors.orage)),
                        Container(
                          margin: EdgeInsets.only(top: 5,),
                          child:Wrap(
                            children: [
                              Text("promotion20%..gsdlfghsldgjvbhgkdsfgkjsdvhtdjhgcvbdbjrghxjvbjdgjchdfr.", style: TextStyle( fontSize: 18, color: AppColors.black),),
                            ],
                          ),
                        ), 
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 280, bottom:10, top: 0),
                    child: Text('Nov 12 2020',style: TextStyle(color: AppColors.glod ),),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:10,),
              child: Row(
                children: <Widget>[
                  Icon(Icons.account_circle, size: 70,color: AppColors.orage,),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("ONS Shop",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        Container(
                          margin: EdgeInsets.only(top: 5,),
                          child:Wrap(
                            children: [
                              Text("promotion 5%...", style: TextStyle( fontSize: 18, color: AppColors.black),),
                            ],
                          ),
                        ), 
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 60, bottom:25,),
                    child: Text('Nov 12 2020'),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:10,),
              child: Row(
                children: <Widget>[
                  Icon(Icons.account_circle, size: 70,color: AppColors.orage,),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("ONS Shop",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        Container(
                          margin: EdgeInsets.only(top: 5,),
                          child:Wrap(
                            children: [
                              Text("promotion 15%...", style: TextStyle( fontSize: 18, color: AppColors.black),),
                            ],
                          ),
                        ), 
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 60, bottom:25,),
                    child: Text('Nov 12 2020'),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:10,),
              child: Row(
                children: <Widget>[
                  Icon(Icons.account_circle, size: 70,color: AppColors.orage,),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("ONS Shop",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        Container(
                          margin: EdgeInsets.only(top: 5,),
                          child:Wrap(
                            children: [
                              Text("promotion 10%...", style: TextStyle( fontSize: 18, color: AppColors.black),),
                            ],
                          ),
                        ), 
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 60, bottom:25,),
                    child: Text('Nov 12 2020'),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:10,),
              child: Row(
                children: <Widget>[
                  Icon(Icons.account_circle, size: 70,color: AppColors.orage,),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("ONS Shop",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        Container(
                          margin: EdgeInsets.only(top: 5,),
                          child:Wrap(
                            children: [
                              Text("promotion 20%...", style: TextStyle( fontSize: 18, color: AppColors.black),),
                            ],
                          ),
                        ), 
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 60, bottom:25,),
                    child: Text('Nov 12 2020'),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:10,),
              child: Row(
                children: <Widget>[
                  Icon(Icons.account_circle, size: 70,color: AppColors.orage,),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("ONS Shop",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        Container(
                          margin: EdgeInsets.only(top: 5,),
                          child:Wrap(
                            children: [
                              Text("promotion 10%...", style: TextStyle( fontSize: 18, color: AppColors.black),),
                            ],
                          ),
                        ), 
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 60, bottom:25,),
                    child: Text('Nov 12 2020'),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:10,),
              child: Row(
                children: <Widget>[
                  Icon(Icons.account_circle, size: 70,color: AppColors.orage,),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("ONS Shop",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        Container(
                          margin: EdgeInsets.only(top: 5,),
                          child:Wrap(
                            children: [
                              Text("promotion 30%...", style: TextStyle( fontSize: 18, color: AppColors.black),),
                            ],
                          ),
                        ), 
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 60, bottom:25,),
                    child: Text('Nov 12 2020'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
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
  
}