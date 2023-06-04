import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop/constants.dart';
import 'package:online_shop/screens/details/components/details_body.dart';

import '../../models/product.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/back.svg',
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/search.svg"),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/cart.svg"),
          ),
          const SizedBox(width: kDefaultPadding / 2)
        ],
      ),
      body: DetailsBody(
        product: product,
      ),
    );
  }
}
