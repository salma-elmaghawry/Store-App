import 'package:flutter/foundation.dart';

class ProductModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String image;

  //constructor
  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.image});
  //factory constructor
  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
        id: jsonData['id'],
        title: jsonData['title'],
        price: jsonData['price'],
        description: jsonData['description'],
        image: jsonData['image']);
  }
}

class RatingModel {
  final double rate;
  final int count;
//constructor 
  RatingModel({required this.rate, required this.count});
//factory constructor 
  factory RatingModel.fromJson(jsonData) {
    return RatingModel(rate: jsonData['rate'], count: jsonData['count']);
  }
}


