import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api_fetch/productmodule/views/product_list_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ProductListView(),
    );
  }
}
