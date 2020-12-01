import 'package:flutter/material.dart';
import 'package:productview/colors/colors.dart';
import 'package:productview/mybloc/selectorBloc.dart';
import 'package:productview/model/data.dart';


class ListSelector extends StatefulWidget {
  final list;
  const ListSelector({Key key, this.list}) : super(key: key);

  @override
  _ListSelectorState createState() => _ListSelectorState();
}

class _ListSelectorState extends State<ListSelector> {
  SelectorBloc selectorBloc = SelectorBloc ();
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
      itemCount: selectors.length,
      itemBuilder: ( BuildContext context, int index){
        return InkWell(
          onTap: () => selectorBloc.changeSelectorView(index),
          child: Container(
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
                Image.asset("${selectors[index]['imagesItems']}", width: 20,height: 25,),
                Text(" ${selectors[index]['text']}", style: TextStyle(color: Colors.black),), 
              ],
            ),
          ),
        );
      }
    );
  }
}