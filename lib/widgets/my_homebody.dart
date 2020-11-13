import 'package:flutter/material.dart';
import 'package:productview/colors/colors.dart';
import 'package:productview/screens/detail_screen.dart';
import 'package:productview/model/data.dart';

import 'listItems.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                top: 25,
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
                        color: AppColors.orage,
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
            //box Detailview
            SizedBox( height: 30,),
            SizedBox(
              width: 500,
              height: 250,
              child: true == true ? WidgetListItems() : ListView(
              ),
            ),
          ],
        ), 
      ),
    );
  }

}