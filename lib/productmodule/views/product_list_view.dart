import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:getx_api_fetch/productmodule/controllers/product_controller.dart';
import 'package:get/get.dart';

class ProductListView extends StatelessWidget {
  ProductController pc = Get.put(ProductController());

  ProductListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product List"),
      ),
      body: Obx(() {
        if (pc.isLoading.value) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
            itemCount: pc.productList.length,
            itemBuilder: (context, index) => Column(
              children: [
                Row(
                  children: [
                    Container(
                      child: Text(pc.productList[index].name),
                    ),
                  ],
                ),
              ],
            ),
          );
        }
      }),
    );
  }
}
