import 'package:flutter/material.dart';
import 'package:productview/colors/colors.dart';
//import 'package:productview/model/data.dart';
class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  // final GlobalKey<ScaffoldState> _detailkey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: IconButton( 
          icon: Icon(Icons.arrow_back_ios, color: AppColors.grey,), onPressed: () { Navigator.pop(context);},
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right:10),
            child: IconButton( icon: Icon(Icons.favorite,color: AppColors.orage,), onPressed: () {  },)
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.asset("assets/images/a.jpg",width: 200,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 70,
                      height: 60,
                      padding: EdgeInsets.all(2),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: AppColors.orage,
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Image.asset("assets/images/a.jpg"),
                    ),
                    Container(
                      width: 70,
                      height: 60,
                      padding: EdgeInsets.all(2),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: AppColors.lightGrey,
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Image.asset("assets/images/a.jpg"),
                    ),
                    Container(
                      width: 70,
                      height: 60,
                      padding: EdgeInsets.all(2),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: AppColors.lightGrey,
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Image.asset("assets/images/a.jpg"),
                    ),
                    Container(
                      width: 70,
                      height: 60,
                      padding: EdgeInsets.all(2),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: AppColors.lightGrey,
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Image.asset("assets/images/a.jpg"),
                    ),
                  ],
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.white,
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text("NIKE AIR MAX 200",
                                style: TextStyle( fontWeight: FontWeight.bold, fontSize: 25,),
                              ),
                              Container(
                                margin: EdgeInsets.all(20),
                                child: Column(
                                  children: <Widget>[
                                    Text("\$ 240.00", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                                    Row(
                                      children: <Widget>[
                                        Icon(Icons.star, color: AppColors.glod, size: 20,),
                                        Icon(Icons.star, color: AppColors.glod, size: 20,),
                                        Icon(Icons.star, color: AppColors.glod, size: 20,),
                                        Icon(Icons.star, color: AppColors.glod, size: 20,),
                                        Icon(Icons.star, color: AppColors.lightGrey, size: 20,),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Available Sizes", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                            ],
                          ),
                          Wrap(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.all(5),
                                child: FlatButton( 
                                  minWidth: double.minPositive, 
                                  child: Text("US 6", style: TextStyle(fontSize: 20.0),),    
                                  shape: RoundedRectangleBorder(  
                                    borderRadius: BorderRadius.circular(7),
                                    side: BorderSide(color: AppColors.lightGrey)
                                  ),
                                  //color: AppColors.orage,  
                                  onPressed: () {},  
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(5),
                                child: FlatButton(  
                                  minWidth: double.minPositive,
                                  child: Text("US 7", style: TextStyle(fontSize: 20.0),),    
                                  shape: RoundedRectangleBorder(  
                                    borderRadius: BorderRadius.circular(7),
                                    side: BorderSide(color: AppColors.lightGrey)
                                  ),
                                  color: AppColors.orage,  
                                  onPressed: () {},  
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(5),
                                child: FlatButton(
                                  minWidth: double.minPositive,  
                                  child: Text("US 8", style: TextStyle(fontSize: 20.0),),    
                                  shape: RoundedRectangleBorder(  
                                    borderRadius: BorderRadius.circular(7),
                                    side: BorderSide(color: AppColors.lightGrey)
                                  ),
                                  //color: AppColors.orage,  
                                  onPressed: () {},  
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(5),
                                child: FlatButton( 
                                  minWidth: double.minPositive, 
                                  child: Text("US 9", style: TextStyle(fontSize: 20.0),),    
                                  shape: RoundedRectangleBorder(  
                                    borderRadius: BorderRadius.circular(7),
                                    side: BorderSide(color: AppColors.lightGrey)
                                  ),
                                  //color: AppColors.orage,  
                                  onPressed: () {},  
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Color", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 8, bottom:8),
                                child: MaterialButton(
                                  minWidth: double.minPositive,
                                  onPressed: () {},
                                  color: AppColors.glod,
                                  textColor: Colors.white,
                                  child: Icon(
                                    Icons.check,
                                    size: 30,
                                  ),
                                  shape: CircleBorder(),
                                )
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 8, bottom:8),
                                child: MaterialButton(
                                  minWidth: double.minPositive,
                                  onPressed: () {},
                                  color: Colors.purple,
                                  // textColor: Colors.white,
                                  // child: Icon(
                                  //   Icons.check,
                                  //   size: 30,
                                  // ),
                                  shape: CircleBorder(),
                                )
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 8, bottom:8),
                                child: MaterialButton(
                                  minWidth: double.minPositive,
                                  onPressed: () {},
                                  color: AppColors.black,
                                  // textColor: Colors.white,
                                  // child: Icon(
                                  //   Icons.check,
                                  //   size: 30,
                                  // ),
                                  shape: CircleBorder(),
                                )
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 8, bottom:8),
                                child: MaterialButton(
                                  minWidth: double.minPositive,
                                  onPressed: () {},
                                  color: Colors.pink,
                                  // textColor: Colors.white,
                                  // child: Icon(
                                  //   Icons.check,
                                  //   size: 30,
                                  // ),
                                  shape: CircleBorder(),
                                )
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 8, bottom:8),
                                child: MaterialButton(
                                  minWidth: double.minPositive,
                                  onPressed: () {},
                                  color: Colors.lightBlue,
                                  // textColor: Colors.white,
                                  // child: Icon(
                                  //   Icons.check,
                                  //   size: 30,
                                  // ),
                                  shape: CircleBorder(),
                                )
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom:10),
                            child: Row(
                              children: [
                                Text("Description", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                          Text(
                            'Inspired by the energy flows on Earth as lava flows and the thythm of waver nike Air Max 200 can boast the largest Max...',
                            style: TextStyle(color: AppColors.lightGrey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: AppColors.orage,
        child:Icon(Icons.shopping_basket),
      ),
    );
  }
}