import 'package:flutter/material.dart';
import 'package:store_app/helper/constants/const_colors.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/screens/update_product_page.dart';

class customcard extends StatelessWidget {
  customcard({required this.product, super.key});
  ProductModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, UpdateProductPage.id);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 150,
            width: 300,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 50,
                color: textColor.withOpacity(0.1),
                spreadRadius: 0,
                offset: Offset.zero,
              )
            ]),
            child: Card(
              color: Colors.white,
              elevation: 7,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title.substring(0, 7),
                      style: TextStyle(color: textColor, fontSize: 16),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          r'$' '${product.price.toString()}',
                          style: TextStyle(
                              color: const Color.fromARGB(255, 241, 186, 19),
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite,
                              color: textColor,
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              right: 32,
              bottom: 110,
              left: 32,
              child: Image.network(
                product.image,
                height: 100,
                width: 100,
              )),
        ],
      ),
    );
  }
}
