class ProductModel {
  final dynamic id;
  final String title;
  final double price;
  final String description;
  final String image;
  final RatingModel rating;
  final String category;

  //constructor
  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.image,
      required this.category,
      required this.rating});
  //factory constructor
  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
        id:jsonData['id'] ,
        title: jsonData['title'],
        price: (jsonData['price'] as num).toDouble(),
        description: jsonData['description'],
        image: jsonData['image'],
        category: jsonData['category'],
        rating: RatingModel.fromJson(jsonData['rating']));
  }
}

class RatingModel {
  final double rate;
  final int count;
//constructor
  RatingModel({required this.rate, required this.count});
//factory constructor
  factory RatingModel.fromJson(jsonData) {
    return RatingModel(
        rate: (jsonData['rate'] as num).toDouble(), count: jsonData['count']);
  }
}
