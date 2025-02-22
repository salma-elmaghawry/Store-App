import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class UpdateProductService {
  Future<ProductModel> updateProduct(
      {required String title,
      required String price,
      required String description,
      required String image,
      required int id,
      required String category}) async {
    print('id=$id');
    Map<String, dynamic> data =
        await Api().put(url: 'https://fakestoreapi.com/products/$id', body: {
      "title": title,
      "price": price,
      "description": description,
      "image": image,
      "category": category,
    });
    return ProductModel.fromJson(data);
  }
}
