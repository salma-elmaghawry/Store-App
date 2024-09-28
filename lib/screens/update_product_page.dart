import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/helper/constants/const_colors.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/update_product_service.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_textField.dart';

class UpdateProductPage extends StatefulWidget {
  UpdateProductPage({super.key});
  static String id = "updateProductPage";

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? productName, desc, image;

  String? price;
  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      
      inAsyncCall: isloading,
      child: Scaffold(
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
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  customTextField(
                    hint: 'Product Name',
                    onChange: (data) {
                      productName = data;
                    },
                  ),
                  SizedBox(height: 20),
                  customTextField(
                    hint: 'Price',
                    inputType: TextInputType.number,
                    onChange: (data) {
                      price = data;
                    },
                  ),
                  SizedBox(height: 20),
                  customTextField(
                    hint: 'Description',
                    onChange: (data) {
                      desc = data;
                    },
                  ),
                  SizedBox(height: 20),
                  customTextField(
                    hint: 'Image',
                    onChange: (data) {
                      image = data;
                    },
                  ),
                  SizedBox(height: 50),
                  CustomButton(
                    title: 'Update',
                    onPressed: () async {
                      isloading = true;
                      setState(() {});
                      try {
                        await updateProduct(product);
                        print('Succes');
                      } catch (e) {
                        print(e.toString());
                      }
                      isloading = false;
                      setState(() {});
                    },
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct(ProductModel product)async {
  await   UpdateProductService().updateProduct(
    id: product.id,
        title: productName == null ? product.title : productName!,
        price:price==null?product.price.toString():price !,
        description: desc == null ? product.description : desc!,
        image: image==null ?product.image:image!,
        category: product.category);
  }
}
