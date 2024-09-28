import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class GetAllProductService {
  Future<List<ProductModel>> getAllproduct() async {
    List<dynamic> data = await Api().get(url: 'https://fakestoreapi.com/products');
    
    // Check if the data returned is not empty
    if (data.isNotEmpty) {
      List<ProductModel> productList = data.map((item) => ProductModel.fromJson(item)).toList();
      return productList;
    } else {
      throw Exception('No products found');
    }
  }
}
