import 'dart:async';
import 'package:productview/mybloc/bloc.dart';

class BlocImageselector implements Bloc {
  final _viewItemsImage = StreamController<dynamic>();
  
  Stream<dynamic> get imageStream => _viewItemsImage.stream;

  void changeImageView(dynamic itemsImage){
    _viewItemsImage.sink.add(itemsImage);
  }

  @override
  void dispose(){
    _viewItemsImage.close();
  }
}