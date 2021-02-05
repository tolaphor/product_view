import 'package:flutter/material.dart';
import 'package:productview/colors/colors.dart';
import 'package:productview/model/data.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<List<Map<String, dynamic>>> _searchItems(String value) async {
    Iterable<Map<String, dynamic>>items = sneakers.where((element) {
                          if(value == ''){
                            return false;
                          }
                          return (element['title'].toLowerCase()).contains(value.toLowerCase());
                        });

    return items.toList();
  }
 
  Future<void> _onSearch(String value) async {
     List<Map<String, dynamic>> searchItems = await _searchItems(value);

     debugPrint("Items: ${searchItems.length}");
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
        title: Text("Seacrch", style: TextStyle(fontSize: 30,color: Color(0xFF4d4d4d),),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10, left: 10, right: 40,),
              padding: EdgeInsets.only(top:5, left: 15, bottom: 5),
              decoration: BoxDecoration(
                border: Border.all( 
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(        
                children: <Widget>[
                  Icon(Icons.search_rounded),
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 15),
                        border: InputBorder.none,
                        hintText: "Search Products",
                      ),
                      onChanged: _onSearch,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:10,),
              child: Row(
                children: <Widget>[
                  Image.asset('assets/images/c.jpeg',width: 80, height: 60,),
                  Container(

                    margin: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Nike AIR MAX 200",style: TextStyle(fontSize: 20,),),
                        Container(
                          margin: EdgeInsets.only(top: 5,),
                          child:Column(
                            children: [
                              Text("280.00", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: AppColors.black),),
                              Text("NEW", style: TextStyle(color: AppColors.glod),),
                            ],
                          ),
                        ), 
                      ],
                    ),
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