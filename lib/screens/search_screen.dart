import 'package:flutter/material.dart';
import 'package:productview/colors/colors.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf4f4f4),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                left: 30,
                top: 20,
              ),
              child:Row(
                children:<Widget>[
                  Container(
                    child: Text(
                      "Search",
                      style: TextStyle(fontSize: 30,color: Color(0xFF4d4d4d),),
                    ),
                  ),
                ],
              ),
            ),
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
    );
  }
}