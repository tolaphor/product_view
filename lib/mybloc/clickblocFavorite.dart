import 'dart:async';
import 'package:productview/mybloc/bloc.dart';
 
 class FavoriteBloc implements Bloc {
  final _viewFavoriteClick = StreamController<dynamic>();
  
  Stream<dynamic> get favoriteStream => _viewFavoriteClick.stream;

  void changeClickView(dynamic itemsClick){
    _viewFavoriteClick.sink.add(itemsClick);
  }

  @override
  void dispose(){
    _viewFavoriteClick.close();
  }
 }