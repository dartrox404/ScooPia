import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:scoopia/core/const/app_sizes.dart';
import 'package:scoopia/core/extensions/app_extensions.dart';
import 'package:scoopia/data/model/category.dart';

class HomepageCategory extends StatelessWidget {
  const HomepageCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        children: List.generate(
          categorylist.length,
          (index) => Container(
            margin: const EdgeInsets.only(right: AppSizes.kspace8),
            decoration: BoxDecoration(
              color: context.color.primary,
              borderRadius: .circular(AppSizes.kspace32),
            ),
            child: Padding(
              padding: const .symmetric(
                vertical: AppSizes.kspace5,
                horizontal: AppSizes.kspace8,
              ),
              child: Row(
                mainAxisAlignment: .spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: AppSizes.kspace16,
                    backgroundImage: AssetImage(categorylist[index].image),
                  ),
                  const Gap(AppSizes.kspace8),
                  Text(
                    categorylist[index].text,
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
      ),
    );
  }
}
