import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/helper/constants/const_colors.dart';
import 'package:store_app/widgets/custom_textField.dart';

class UpdateProductPage extends StatelessWidget {
  const UpdateProductPage({super.key});
  static String id="updateProductPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(70),
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
                      "Update Product",
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.cartShopping,
                          color: Colors.white,
                          size: 22,
                        ))
                  ],
                ),
              ),
            )),
        body:Center(
          
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(height: 50),
                customTextField(hint: 'Product Name'),
              ],
            ),
          ),
        ),
    );
  }
}
