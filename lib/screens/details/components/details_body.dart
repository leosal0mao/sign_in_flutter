// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:online_shop/constants.dart';
import 'package:online_shop/screens/details/components/add_to_cart.dart';
import 'package:online_shop/screens/details/components/cart_counter.dart';
import 'package:online_shop/screens/details/components/description.dart';
import 'package:online_shop/screens/details/components/fav_button.dart';
import 'package:online_shop/screens/details/components/product_title_with_image.dart';

import '../../../models/product.dart';
import 'color_and_size.dart';

class DetailsBody extends StatelessWidget {
  final Product? product;

  const DetailsBody({
    Key? key,
    this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  height: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      Description(product: product),
                      const SizedBox(height: kDefaultPadding / 2),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CartCounter(),
                          FavButton(),
                        ],
                      ),
                      const SizedBox(height: kDefaultPadding / 2),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                        child: AddToCart(product: product),
                      )
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
