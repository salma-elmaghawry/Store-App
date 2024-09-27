import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/helper/constants/const_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    "Shoply",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.cartShopping,
                        color: Colors.white,
                        size: 25,
                      ))
                ],
              ),
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 170,
              width: 200,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  blurRadius: 50,
                  color: textColor.withOpacity(0.1),
                  spreadRadius: 0,
                  offset: Offset.zero,
                )
              ]),
              child: Card(
                elevation: 7,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'salma',
                        style: TextStyle(color: textColor, fontSize: 16),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            r"$25",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 241, 186, 19),
                                fontSize: 15,
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
              bottom: 95,
              
                child: Image.network(
              "https://th.bing.com/th/id/R.4aca24ef5b26266d68d9103d407b1ec2?rik=oi5BznOpjzDKpQ&pid=ImgRaw&r=0",
              height: 100,
            )),
          ],
        ),
      ),
    );
  }
}
