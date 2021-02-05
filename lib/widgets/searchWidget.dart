import 'package:flutter/material.dart';
import 'package:productview/colors/colors.dart';
 
class Searchclick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: IconButton( 
          icon: Icon(Icons.arrow_back_ios, color: AppColors.grey,),
          onPressed: () { Navigator.pop(context);},
        ),
      ),
      body:Container(
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
              ),
            ),
          ],
        ),
      )
    );
  }
}