import 'package:flutter/material.dart';
import 'package:scoopia/core/const/app_sizes.dart';
import 'package:scoopia/core/extensions/app_extensions.dart';

class CartPageChip extends StatelessWidget {
  const CartPageChip({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.kradiusXl),
        color: context.color.primary,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          style: context.text.bodySmall?.copyWith(
            fontFamily: 'poppins',
            color: context.color.secondary,
          ),
        ),
      ),
    );
  }
}
