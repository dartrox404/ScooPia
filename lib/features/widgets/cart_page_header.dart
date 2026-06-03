import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:scoopia/core/const/app_sizes.dart';
import 'package:scoopia/core/extensions/app_extensions.dart';

class CartPageHeader extends StatelessWidget {
  const CartPageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppSizes.kspace16,
        horizontal: AppSizes.kspace12,
      ),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        crossAxisAlignment: .start,
        children: [
          GestureDetector(
            onTap: () => context.go('/home'),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizes.kradiusXl),
                color: context.color.tertiary.withValues(alpha: .2),
                border: Border.all(color: context.color.primary),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back, color: context.color.secondary),
                    const Gap(AppSizes.kspace5),
                    Text(
                      'Back',
                      style: context.text.bodyMedium?.copyWith(
                        fontFamily: 'poppins',
                        color: context.color.secondary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Spacer(),
          Container(
            decoration: BoxDecoration(
              shape: .circle,
              border: Border.all(color: context.color.primary),
              color: context.color.tertiary.withValues(alpha: .2),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.favorite,
                color: context.color.primary.withValues(alpha: .2),
              ),
            ),
          ),
          const Gap(AppSizes.kspace8),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: context.color.primary),
              shape: .circle,
              color: context.color.primary.withValues(alpha: .2),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.shopping_bag,
                color: context.color.primary.withValues(alpha: .5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
