import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FavButton extends StatelessWidget {
  const FavButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 32,
      width: 32,
      decoration: const BoxDecoration(
        color: Color(0xFFFF6464),
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset("assets/icons/heart.svg"),
    );
  }
}
