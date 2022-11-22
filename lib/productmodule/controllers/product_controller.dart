import 'dart:html';

import 'package:fetch_api/apimodule/api_service.dart';
import 'package:fetch_api/productmodule/models/product_model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController{
  var isLoading = true.obs;
  var productList = <productModel>[].obs;
  @override
void onInit(){
  fetchproducts();
  super.onInit();
}
void fetchproducts()async{
  try{
    isLoading(true);
    var products=await ApiService.fetchproducts();
    if(products !=null){
      productList.assignAll(products);
    }
  }finally{
    isLoading(false);
  }
}



}