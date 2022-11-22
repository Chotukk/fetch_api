import 'package:fetch_api/productmodule/models/product_model.dart';
import 'package:http/http.dart'as http;
class ApiService{

  static var client = http.Client();
  
  static get http => null;
  
  static Future fetchproducts() async{
  
    var response = await client.get(
      Uri.parse('https://makeup-api.herokuapp.com/api/v1/products.json?brand=marienatie'));
      if(response.statusCode ==200){
        
        var jsonString = response.body;
         ProductFromJson(jsonString);
         
      }
    }
    
      static void ProductFromJson(String jsonString) {}

  }
  
  class productModel {
  String get imageLink => null!;

  String get name => null!;

  String get brand => null!;

  String get category => null!;
  }
