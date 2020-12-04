import 'package:flutter/material.dart';
import 'package:productview/colors/colors.dart';
import 'package:productview/mybloc/imageselector.dart';
import 'package:productview/mybloc/viewSizebloc.dart';
import 'package:productview/mybloc/viewColorBloc.dart';
//import 'package:productview/mybloc/bloc.dart';
class DetailScreen extends StatefulWidget {
  //DetailScreen(sneaker);
  final listdetail;
  const DetailScreen({Key key, this.listdetail}) : super(key: key);
  @override
  _DetailScreenState createState() => _DetailScreenState();
}
class _DetailScreenState extends State<DetailScreen> {

  ItemsBloc blocSize = new ItemsBloc();
  ColorBloc blocColor = new ColorBloc();
  BlocImageselector blocImages = new BlocImageselector();
    //final GlobalKey<ScaffoldState> _detailkey = new GlobalKey<ScaffoldState>();
    var pressed = false ;
    @override
    void initState() {
      super.initState();
    }

    @override
    void dispose() {
      super.dispose();
      blocSize.dispose();
      blocColor.dispose();
      blocImages.dispose();
    }
    @override
  Widget build(BuildContext context){
  
    debugPrint("${widget.listdetail}");
    // call dynamic data
      List<Widget> images = <Widget>[
        //displayData widget
      ];
      // List<String> texts = [
      // // 'Hello 1',
      // // 'Hello 2',
      // // 'Hello 3',
      // // 'Hello 4',
      // // 'Hello 5',
      // ];
      //images = widget.listdetail['images'] = (texts)
      for (dynamic data in widget.listdetail['images']){
        // myTest.add(
        //   Text("data")
        // );
        images.add(
          //add widget Data to display
          InkWell(
            onTap: () => blocImages.changeImageView(data),
            child: Container(
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
              child: Image.asset('$data'),//dynamic data form images
            )
          ),
        );
      }
      //Size
      // List<Widget> size = <Widget>[];
      // for (dynamic datasize in widget.listdetail['size']){
      //   size.add( 
      //     Container(
      //       margin: EdgeInsets.all(5),
      //       child: FlatButton( 
      //         minWidth: double.minPositive, 
      //         child: Text("$datasize", style: TextStyle(fontSize: 20.0),),    
      //         shape: RoundedRectangleBorder(  
      //           borderRadius: BorderRadius.circular(7),
      //           side: BorderSide(color: AppColors.lightGrey)
      //         ),
      //         //color: AppColors.orage,  
      //         onPressed: () {
      //           bloc.changeSizeView(true);
      //         },  
      //       ),
      //     ),
      //   );
      // }

      //color
      // List<Widget> color = <Widget>[];
      // for(String datacolor in widget.listdetail['color']){
      //   color.add(
      //     Container(
      //       margin: EdgeInsets.only(top: 8, bottom:8),
      //       child: MaterialButton(
      //         minWidth: double.minPositive,
      //         onPressed: () {
      //           setState(() {
                  
      //           });
      //         },
      //         color: _hexColor('$datacolor'),
      //         textColor: Colors.white,
      //         // child: Icon(
      //         //   Icons.check,
      //         //   size: 30,
      //         // ),
      //         shape: CircleBorder(),
      //       )
      //     ),
      //   );
      // }
      //icon rate
      List<Widget> rate = <Widget>[];
      for(int i=1 ; i <= 5 ; i++ ) {
  
  debugPrint('$i');
  debugPrint("${widget.listdetail['rates']}");
  
        if(widget.listdetail['rates'] != null &&  i <= widget.listdetail['rates']){
          rate.add(Icon(Icons.star, color: AppColors.glod, size: 20,),);
        }
        else{
          rate.add(Icon(Icons.star, color: AppColors.grey, size: 20,),);
        }
      
      }  
  //return widget app
    return Scaffold(  
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: IconButton( 
          icon: Icon(Icons.arrow_back_ios, color: AppColors.grey,), onPressed: () { Navigator.pop(context);},
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right:10),
            child: IconButton( icon: Icon(Icons.favorite_border,color: AppColors.orage,), onPressed: () {  },)
          ),
        ],
      ),
      body: SingleChildScrollView(
        child:Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                StreamBuilder(
                  stream: blocImages.imageStream,
                  builder: (context, snapshot){
                    //final getdata = snapshot.data;
                    return Container(
                      width: 200,
                      child: snapshot.data == null ? Image.asset('${widget.listdetail['images'][0]}',width: 200,) : Image.asset('${snapshot.data}'),
                    ); 
                  },
                ),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: true == true ? images : <Widget>[
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
                      child: Image.asset('${widget.listdetail['images'][0]}'),
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
                              Text('${widget.listdetail['title']}',
                                style: TextStyle( fontWeight: FontWeight.bold, fontSize: 25,),
                              ),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Text('${widget.listdetail['price']}', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: true == true ? rate : <Widget>[
                                        Icon(Icons.star_border, color: AppColors.glod, size: 20,),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 25),
                          Row(
                            children: [
                              Text("${widget.listdetail['sizetitle']}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                            ],
                          ),
                          StreamBuilder<dynamic>(
                            stream: blocSize.itemStream,
                            builder: (context, snapshot){
                              // snapshot.data
                              List<Widget> itemSizes = [];
                              for (dynamic datasize in widget.listdetail['size']){
                                itemSizes.add(
                                  Container(
                                    margin: EdgeInsets.all(5),
                                    child: FlatButton( 
                                      minWidth: double.minPositive, 
                                      child: Text("$datasize", style: TextStyle(fontSize: 20.0),),    
                                      shape: RoundedRectangleBorder(  
                                        borderRadius: BorderRadius.circular(7),
                                        side: BorderSide(color: AppColors.lightGrey),
                                      ),
                                      color: snapshot.data == datasize ? AppColors.orage : AppColors.white,  
                                      onPressed: () {
                                        blocSize.changeSizeView(datasize);
                                      },  
                                    ),
                                  )
                                );
                              }
                              return Wrap(
                                children: itemSizes,
                              );
                            }
                          ),
                        
                          Row(
                            children: [
                              Text("${widget.listdetail['colortitle']}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                            ],
                          ),

                          StreamBuilder<dynamic>(
                            stream: blocColor.colorStream,
                            builder: (context, snapshot){
                              List<Widget> color = <Widget>[];
                              for(String datacolor in widget.listdetail['color']){
                                color.add(
                                  Container(
                                    margin: EdgeInsets.only(top: 8, bottom:8),
                                    child: MaterialButton(
                                      minWidth: double.minPositive,
                                      onPressed: () {
                                        blocColor.changeColorView(datacolor);
                                      },
                                      color: _hexColor('$datacolor'),
                                      textColor: Colors.white,
                                      child: snapshot.data == datacolor ? Icon(Icons.check,size: 30,): null,
                                      shape: CircleBorder(),
                                    )
                                  ),
                                );
                                
                              }
                              return Row(
                                children: color,
                              );
                            },
                          ),
                          
                          Container(
                            margin: EdgeInsets.only(bottom:10),
                            child: Row(
                              children: [
                                Text("${widget.listdetail['descriptiontitle']}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                          Text(
                            '${widget.listdetail['description']}',
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
  Color _hexColor(String color){
    color = color.toUpperCase().replaceAll("#", "");
      if (color.length == 6) {
        color = "FF" + color;
      }
      return Color (int.parse(color, radix: 16));
  }

}

  // Wrap(
  //   children: true == true ? size :<Widget>[
  //     StreamBuilder<bool>(
  //       stream: bloc.itemStream,
  //       builder: (context, snapshot){
  //         dynamic viewsize = snapshot.data;
  //         if( viewsize == null){ 
  //           return Container(
  //             margin: EdgeInsets.all(5),
  //             child: FlatButton( 
  //               minWidth: double.minPositive, 
  //               child: Text("US 6", style: TextStyle(fontSize: 20.0),),    
  //               shape: RoundedRectangleBorder(  
  //                 borderRadius: BorderRadius.circular(7),
  //                 side: BorderSide(color: AppColors.lightGrey)
  //               ),
  //               //color: AppColors.orage,  
  //               onPressed: () {
  //                 bloc.changeImageView(true);
  //               },  
  //             ),
  //           );
  //         }
  //         else if (viewsize != false){
  //           return Container(
  //             margin: EdgeInsets.all(5),
  //             child: FlatButton( 
  //               minWidth: double.minPositive, 
  //               child: Text("US 6", style: TextStyle(fontSize: 20.0),),    
  //               shape: RoundedRectangleBorder(  
  //                 borderRadius: BorderRadius.circular(7),
  //                 side: BorderSide(color: AppColors.lightGrey)
  //               ),
  //               color: AppColors.orage,  
  //               onPressed: () {
  //                 bloc.changeImageView(false);
  //               },  
  //             ),
  //           );
  //         }
  //         else{
  //           return Container(
  //             margin: EdgeInsets.all(5),
  //             child: FlatButton( 
  //               minWidth: double.minPositive, 
  //               child: Text("US 6", style: TextStyle(fontSize: 20.0),),    
  //               shape: RoundedRectangleBorder(  
  //                 borderRadius: BorderRadius.circular(7),
  //                 side: BorderSide(color: AppColors.lightGrey)
  //               ),
  //               //color: AppColors.orage,  
  //               onPressed: () {
  //                 bloc.changeImageView(true);
  //               },  
  //             ),
  //           );
  //         }
  //       }
  //     ), 
  //   ]
  // ),

  // Row(
  //   children: true ==true ? color : <Widget>[
  //     Container(
  //       margin: EdgeInsets.only(top: 8, bottom:8),
  //       child: MaterialButton(
  //         minWidth: double.minPositive,
  //         onPressed: () {},
  //         color: AppColors.glod,
  //         textColor: Colors.white,
  //         child: Icon(
  //           Icons.check,
  //           size: 30,
  //         ),
  //         shape: CircleBorder(),
  //       )
  //     ),
  //   ],
  // ),
