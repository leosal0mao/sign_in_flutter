import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/product.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(product!.title.toString(), style: TextStyle(color: Colors.white)),
          Text(
            product!.title.toString(),
            style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Price\n"),
                    TextSpan(
                      text: "\$${product!.price}",
                      style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              const SizedBox(width: kDefaultPadding),
              Expanded(
                child: Hero(
                  tag: '${product!.id}',
                  child: Image.asset(
                    product!.image.toString(),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
