import 'dart:async';
import 'package:productview/mybloc/bloc.dart';

class ItemsBloc implements Bloc {
  final _viewItems = StreamController<dynamic>();
  
  Stream<dynamic> get itemStream => _viewItems.stream;

  void changeSizeView(dynamic viewnumber){
    _viewItems.sink.add(viewnumber);
  }

  @override
  void dispose(){
    _viewItems.close();
  }
}