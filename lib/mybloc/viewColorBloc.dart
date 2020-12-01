import 'dart:async';
import 'package:productview/mybloc/bloc.dart';

class ColorBloc implements Bloc {
  final _viewItemscolor = StreamController<dynamic>();
  
  Stream<dynamic> get colorStream => _viewItemscolor.stream;

  void changeColorView(dynamic itemscolor){
    _viewItemscolor.sink.add(itemscolor);
  }

  @override
  void dispose(){
    _viewItemscolor.close();
  }
}