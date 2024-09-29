import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/helper/constants/const_colors.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/get_all_product_service.dart';
import 'package:store_app/widgets/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: PreferredSize(
            preferredSize:const Size.fromHeight(70),
            child: Container(
              decoration: const BoxDecoration(
                  color: secColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(45),
                      bottomRight: Radius.circular(45))),
              child: Padding(
                padding: const EdgeInsets.only(top: 35, bottom: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Shoply",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon:const  Icon(
                          FontAwesomeIcons.cartShopping,
                          color: Colors.white,
                          size: 25,
                        ))
                  ],
                ),
              ),
            )),
        body: Padding(
          padding: const EdgeInsets.only(top: 32, left: 14, right: 14),
          child:FutureBuilder<List<ProductModel>>(
  future: GetAllProductService().getAllproduct(),
  builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return Center(child:const  CircularProgressIndicator(color: secColor));
    } else if (snapshot.hasError) {
      return Center(child: Text('Error: ${snapshot.error}'));
    } else if (snapshot.hasData) {
      List<ProductModel> products = snapshot.data!;
      return GridView.builder(
        itemCount: products.length,
        clipBehavior: Clip.none,
        gridDelegate:const  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (context, index) {
          return customcard(product: products[index]);
        },
      );
    } else {
      return const  Center(child: Text('No products found'));
    }
  },
),
        ));
  }
}
