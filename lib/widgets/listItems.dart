import 'package:flutter/material.dart';
import 'package:productview/colors/colors.dart';
import 'package:productview/mybloc/clickblocFavorite.dart';
import 'package:productview/screens/detail_screen.dart';

class WidgetListItems extends StatefulWidget {
  final listDetail;
  final changeproducts;
  const WidgetListItems({Key key, this.listDetail, this.changeproducts}) : super(key: key);
  @override
  _WidgetListItemsState createState() => _WidgetListItemsState();
  
}
class _WidgetListItemsState extends State<WidgetListItems> {
  @override
  FavoriteBloc clickfavorite = FavoriteBloc();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: widget.changeproducts.length,
      itemBuilder: (BuildContext context, int index){
        return InkWell(
          onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(listdetail: widget.changeproducts[index],),
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
                    Container(
                      width: 150, 
                      child: Image.asset("${widget.changeproducts[index]['images'][index]}", height: 130,)
                    ),
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
                              child: Text("${widget.changeproducts[index]['title']}",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                              ), 
                            ),
                            SizedBox(height: 10,),
                            Text("${widget.changeproducts[index]['subtitleItems']}",style: TextStyle(color: AppColors.orage),),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("${widget.changeproducts[index]['price']}",style: TextStyle(color: AppColors.black, fontSize: 15),),
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
                    icon: Icon(Icons.favorite_border, color: AppColors.grey), 
                    onPressed: (){
                    },
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