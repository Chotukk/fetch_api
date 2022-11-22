import 'package:fetch_api/commonmodule/AppColor.dart';
import 'package:fetch_api/commonmodule/AppString.dart';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get.dart';
import 'package:fetch_api/productmodule/views/product_list_view.dart';
void main(){
runApp(MyApp());  
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return GetMaterialApp(
    title: AppString.fetchApiData,
    theme: ThemeData(primarySwatch: AppColor.purpleColor,
    ),
   debugShowCheckedModeBanner: false,
   home: ProductListView(),);
  }
}