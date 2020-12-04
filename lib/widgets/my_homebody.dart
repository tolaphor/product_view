import 'package:flutter/material.dart';
import 'package:productview/colors/colors.dart';
import 'package:productview/model/data.dart';
import 'package:productview/mybloc/selectorBloc.dart';

import 'listItems.dart';
import 'listSelectItems.dart';
class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  SelectorBloc itemsSelector = SelectorBloc(); 
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    itemsSelector.dispose();
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
      ),
      body: StreamBuilder(
        stream: itemsSelector.selectorStream,
        builder: (context, snapshot){
          debugPrint('change ${snapshot.data}');
          List <Map> products = sneakers;
          switch (snapshot.data) {
            case 0:
              products = sneakers;
              break;
            case 1:
              products = watchs;
              break;
            case 2:
              products = jakets;
              break;
          }
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Container(
                //   padding: EdgeInsets.only(
                //     top: 30,
                //     left: 20,
                //     right: 15,
                //   ),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: <Widget>[
                //       Container(
                //         decoration: BoxDecoration(
                //           color: AppColors.white,
                //           borderRadius: BorderRadius.circular(15),
                //         ),
                //         child: IconButton(
                //           icon: Icon(Icons.menu), 
                //           onPressed: (){_scaffoldKey.currentState.openDrawer();}
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                Container(
                  padding: EdgeInsets.only(
                    left: 10,
                    top: 5,
                  ),
                  margin: EdgeInsets.only(bottom:20),
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
                //box Detailview
                // SizedBox( height: 30,),
                SizedBox(
                  width: 500,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //scrollDirection: Axis.horizontal,
                    children: true == false ? ListSelector() : <Widget>[
                      InkWell(
                        onTap: () => itemsSelector.changeSelectorView(0),
                        child: Container(
                          padding: EdgeInsets.all(15),
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: snapshot.data == 0 ? AppColors.orage : AppColors.lightGrey,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.all(2),),
                              Image.asset("assets/images/c.jpeg", width: 20,height: 25,),
                              Text(" Sneakers", style: TextStyle(color: Colors.black),),
                            ], 
                          ), 
                        ),
                      ),
                      InkWell(
                        onTap: () => itemsSelector.changeSelectorView(1),
                        child:Container(
                          padding: EdgeInsets.all(15),
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: snapshot.data == 1 ? AppColors.orage : AppColors.lightGrey,
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
                      ),
                      InkWell(
                        onTap: () => itemsSelector.changeSelectorView(2),
                        child:Container(
                          padding: EdgeInsets.all(15),
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: snapshot.data == 2 ? AppColors.orage : AppColors.lightGrey,
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
                      ),
                    ],
                  ),
                ),
                SizedBox( height: 30,),
                SizedBox(
                  width: 500,
                  height: 250,
                  //form class listItems
                  child: WidgetListItems( changeproducts: products),
                ),
              ],
            ), 
          );
        },
      ), 
      // drawer page
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
            Container(
              padding: EdgeInsets.only(bottom: 0),
              margin: EdgeInsets.only(bottom: 0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      title: Text('Version : 1.0.0'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}