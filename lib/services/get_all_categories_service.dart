import 'package:fashion_app/models/product_model.dart';

import '../helper/api.dart';

class GetAllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> data = await Api().get(
      url: 'https://fakestoreapi.com/products/categories',
    );
    List<dynamic> categories = [];
    for (int i = 0; i <= data.length; i++) {
      categories.add(ProductModel.fromJson(data[i]));
    }
    return categories;
  }
}
