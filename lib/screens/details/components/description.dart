import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/product.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    this.product,
  }) : super(key: key);

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(
        product!.description.toString(),
        style: const TextStyle(height: 1.5),
      ),
    );
  }
}
