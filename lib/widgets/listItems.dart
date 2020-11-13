import 'package:flutter/material.dart';
import 'package:productview/colors/colors.dart';
import 'package:productview/model/data.dart';
import 'package:productview/screens/detail_screen.dart';

class WidgetListItems extends StatefulWidget {
  @override
  _WidgetListItemsState createState() => _WidgetListItemsState();
}

class _WidgetListItemsState extends State<WidgetListItems> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: sneakers.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(),
              ),
            ),
          },
          child:Container(
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
                    Image.asset("${sneakers[index]['images'][index]}",),
                    Expanded(
                      child: Container(
                        color: AppColors.white,
                        padding: EdgeInsets.only(
                          top: 10,
                          bottom: 10,
                        ),
                        child: Column(
                          children: <Widget>[
                            Title(color: Colors.black, 
                              child: Text("${sneakers[index]['title']}",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                              ), 
                            ),
                            SizedBox(height: 10,),
                            Text("${sneakers[index]['subtitle']}",style: TextStyle(color: AppColors.orage),),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('\$ ', style: TextStyle(color: AppColors.glod),),
                                Text("${sneakers[index]['price']}",style: TextStyle(color: AppColors.black, fontSize: 15),),
                              ],
                            ),
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
        );
      }
    );
  }
}