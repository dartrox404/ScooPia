import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:scoopia/core/const/app_sizes.dart';
import 'package:scoopia/core/extensions/app_extensions.dart';
import 'package:scoopia/data/model/product.dart';
import 'package:scoopia/features/widgets/homepage_category.dart';
import 'package:scoopia/features/widgets/homepage_header.dart';
import 'package:scoopia/features/widgets/hompage_product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.tertiary,
      body: Stack(
        children: [
          RotatedBox(
            quarterTurns: 3,
            child: Image.asset(
              'assets/images/download__1_-removebg-preview.webp',
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const .symmetric(
                vertical: AppSizes.kspace8,
                horizontal: AppSizes.kspace10,
              ),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  const Gap(AppSizes.kspace20),
                  const HomepageHeader(),
                  const Gap(AppSizes.kspace16),
                  Text(
                    'Hi Arslan 👋',
                    style: context.text.bodyMedium?.copyWith(
                      fontFamily: 'poppins',
                      color: context.color.secondary,
                    ),
                  ),
                  const Gap(AppSizes.kspace5),
                  Text(
                    'What are you craving today?',
                    style: context.text.headlineSmall?.copyWith(
                      fontFamily: 'fredoka',
                      color: context.color.secondary,
                    ),
                  ),
                  const Gap(AppSizes.kspace16),
                  Container(
                    decoration: BoxDecoration(
                      color: context.color.primary,
                      borderRadius: BorderRadius.circular(AppSizes.kspace32),
                    ),
                    child: Padding(
                      padding: const .symmetric(
                        vertical: AppSizes.kspace10,
                        horizontal: AppSizes.kspace16,
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.search, color: context.color.secondary),
                          const Gap(AppSizes.kspace8),
                          Text(
                            'Search Waffles,Toppins',
                            style: context.text.bodyMedium?.copyWith(
                              fontFamily: 'poppins',
                              color: context.color.secondary.withValues(
                                alpha: .4,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Gap(AppSizes.kspace16),
                  const HomepageCategory(),
                  const Gap(AppSizes.kspace16),
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Text(
                        'Category',
                        style: context.text.bodyLarge?.copyWith(
                          fontFamily: 'fredoka',
                          color: context.color.secondary,
                        ),
                      ),
                      Text(
                        'See all',
                        style: context.text.bodyMedium?.copyWith(
                          fontFamily: 'poppins',
                          color: context.color.secondary,
                        ),
                      ),
                    ],
                  ),
                  const Gap(AppSizes.kspace20),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: AppSizes.kspace10,
                            crossAxisSpacing: AppSizes.kspace10,
                          ),
                      itemCount: produclits.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () =>
                              context.go('/cart', extra: produclits[index]),
                          child: HompageProductCard(x: produclits[index]),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
