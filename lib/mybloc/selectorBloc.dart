import 'dart:async';
import 'package:productview/mybloc/bloc.dart';

class SelectorBloc implements Bloc {
  final _viewItemsSelector = StreamController<dynamic>();
  
  Stream<dynamic> get selectorStream => _viewItemsSelector.stream;

  void changeSelectorView(dynamic itemsSelector){
    _viewItemsSelector.sink.add(itemsSelector);
  }

  @override
  void dispose(){
    _viewItemsSelector.close();
  }
}