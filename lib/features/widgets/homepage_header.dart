import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:scoopia/core/const/app_sizes.dart';
import 'package:scoopia/core/extensions/app_extensions.dart';

class HomepageHeader extends StatelessWidget {
  const HomepageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            color: context.color.tertiary.withValues(alpha: .6),
            borderRadius: .circular(AppSizes.kradiusXl),
            border: Border.all(color: context.color.primary),
          ),
          child: Padding(
            padding: const .symmetric(
              vertical: AppSizes.kspace5,
              horizontal: AppSizes.kspace16,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.menu, color: context.color.secondary),
                const Gap(AppSizes.kspace8),
                Text(
                  'Menu',
                  style: context.text.bodyMedium?.copyWith(
                    fontFamily: 'poppins',
                    color: context.color.secondary,
                  ),
                ),
              ],
            ),
          ),
        ),
        CircleAvatar(
          radius: AppSizes.kspace24,
          backgroundImage: AssetImage('assets/images/avatar.webp'),
        ),
      ],
    );
  }
}
