import 'dart:convert';

import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class GetAllProductService {
  Future<List<ProductModel>> getAllproductService() async {
    List<dynamic>data=await
    Api().get(url: 'https://fakestoreapi.com/products');

    List<ProductModel> ProductsList = [];
    for (int i = 0; i < data.length; i++) {
      ProductsList.add(data[i]);
    }
    return ProductsList;
  }
}
