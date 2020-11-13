import 'package:flutter/material.dart';
import 'package:productview/colors/colors.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}
class _NotificationScreenState extends State<NotificationScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                left: 30,
                top: 20,
              ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:<Widget>[
                  Container(
                    child: Text(
                      "Notification",
                      style: TextStyle(fontSize: 30,color: Color(0xFF4d4d4d),),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    child: IconButton( 
                      icon: Icon(Icons.search_sharp,),
                      onPressed: (){},
                    )
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
      
    );
  }
  
}