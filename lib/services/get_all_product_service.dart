import 'dart:convert';
import '../models/product_model.dart';
import 'package:http/http.dart' as http;
class GetAllProductService{
  Future<List<ProductModel>> getAllProduct() async {
    List<ProductModel> productList=[];
     http.Response response = await http.get(Uri.parse("https://fakestoreapi.com/products"));
     List<dynamic> data = jsonDecode(response.body);
     for(int i=0;i<=data.length;i++){
       productList.add(
         ProductModel.fromJson(data[i])
       );
     }
    return productList;
  }
}