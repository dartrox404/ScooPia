import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:scoopia/core/const/app_sizes.dart';
import 'package:scoopia/core/extensions/app_extensions.dart';
import 'package:scoopia/data/model/product.dart';

class HompageProductCard extends StatelessWidget {
  const HompageProductCard({super.key, required this.x});
  final Product x;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      height: 250,
      width: 180,
      child: Stack(
        children: [
          Center(
            child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: context.color.primary,
                borderRadius: .circular(AppSizes.kspace32),
              ),
              child: Column(
                mainAxisAlignment: .center,
                crossAxisAlignment: .center,
                children: [
                  const Gap(AppSizes.kspace20),
                  Text(
                    x.name,
                    textAlign: .center,
                    style: context.text.bodyMedium?.copyWith(
                      fontFamily: 'poppins',
                      color: context.color.secondary,
                    ),
                  ),
                  Text(
                    x.price,
                    textAlign: .center,
                    style: context.text.bodyLarge?.copyWith(
                      fontFamily: 'fredoka',
                      fontWeight: FontWeight.bold,
                      color: context.color.secondary,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 50,
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(x.image),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 60,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: context.color.secondary,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.favorite, color: context.color.primary),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
