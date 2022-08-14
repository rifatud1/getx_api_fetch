import 'package:get/get.dart';
import 'package:getx_api_fetch/apimodule/api_service.dart';

import '../models/product_model.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = <ProductModel>[].obs;


  void onInit(){
    fetchProducts();
  }

  fetchProducts() async{
    try{
      isLoading(true);
      var products = await ApiService.fetchProducts();

      if(products!= null) {
        productList.assignAll(products);
      }
    }finally{
      isLoading(false);
    }
  }
}