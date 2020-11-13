import 'package:flutter/material.dart';
import 'package:productview/colors/colors.dart';

class OrderCardScreen extends StatefulWidget {
  @override
  _OrderCardScreenState createState() => _OrderCardScreenState();
}

class _OrderCardScreenState extends State<OrderCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(
                left: 10,
                top: 25,
              ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:<Widget>[
                      Container(
                        padding: EdgeInsets.only(
                          right: 0,
                        ),
                        child: Text(
                          "Shopping",
                          style: TextStyle(fontSize: 30,color: Color(0xFF4d4d4d),),
                        ),
                      ),
                        Text(
                          "Cart",
                          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                        ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    child: Icon(Icons.delete, color: AppColors.orage, size: 40,)
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:10,),
              child: Row(
                children: <Widget>[
                  Image.asset('assets/images/b.jpg',width: 80, height: 60,),
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
                  Image.asset('assets/images/d.jpg',width: 80, height: 60,),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Swish LIKE Watch",style: TextStyle(fontSize: 20,),),
                        Container(
                          margin: EdgeInsets.only(top: 5,),
                          child:Column(
                            children: [
                              Text("480.00", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: AppColors.black),),
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
                  Image.asset('assets/images/g.jpg',width: 80, height: 60,),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Jacket KT Fashion",style: TextStyle(fontSize: 20,),),
                        Container(
                          margin: EdgeInsets.only(top: 5,),
                          child:Column(
                            children: [
                              Text("780.00", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: AppColors.black),),
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
              margin: EdgeInsets.only(left: 30, right: 30, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Items",style: TextStyle(color: AppColors.lightGrey, fontSize: 15),),
                  Text("3", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total",style: TextStyle(color: AppColors.glod, fontSize: 15),),
                  Text("15400.00", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Container(  
              alignment: Alignment.center,
              margin: EdgeInsets.all(25),  
              child: Column(
                children: [
                  FlatButton( 
                    padding: EdgeInsets.only(left: 30, right: 30, top: 5, bottom:5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Text('Pay', style: TextStyle(fontSize: 25.0),),  
                    color: AppColors.orage,  
                    textColor: AppColors.white,  
                    onPressed: () {},  
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