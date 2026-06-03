import 'package:action_slider/action_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:scoopia/core/const/app_sizes.dart';
import 'package:scoopia/core/extensions/app_extensions.dart';
import 'package:scoopia/data/model/product.dart';
import 'package:scoopia/features/utils/cart_page_chip.dart';
import 'package:scoopia/features/widgets/cart_page_header.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key, required this.x});
  final Product x;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.tertiary,
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: .spaceBetween,
            children: [
              Container(
                height: context.height * .6,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(x.image),
                    fit: .cover,
                  ),
                ),
                child: CartPageHeader(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      x.name,
                      style: context.text.titleLarge?.copyWith(
                        fontFamily: 'fredoka',
                        color: context.color.secondary,
                      ),
                    ),
                    const Gap(AppSizes.kspace8),
                    Text(
                      '⭐ 4.9(1,200 reviews)',
                      style: context.text.bodyMedium?.copyWith(
                        fontFamily: 'poppins',
                        color: context.color.secondary.withValues(alpha: .5),
                      ),
                    ),
                    const Gap(AppSizes.kspace10),
                    Text(
                      'Crispy ${x.name} golden waffle topped with rich choclate syrup and soft cream.Perfect for desert lovers.',
                      style: context.text.bodyMedium?.copyWith(
                        fontFamily: 'poppins',
                        color: context.color.secondary,
                      ),
                    ),
                    const Gap(AppSizes.kspace10),
                    Text(
                      'Toppings',
                      style: context.text.titleLarge?.copyWith(
                        fontFamily: 'fredoka',
                        color: context.color.secondary,
                      ),
                    ),
                    const Gap(AppSizes.kspace10),
                    Wrap(
                      spacing: AppSizes.kspace5,
                      runSpacing: AppSizes.kspace5,
                      children: [
                        CartPageChip(text: 'Stawbery'),
                        CartPageChip(text: 'ExtraChocolate'),
                        CartPageChip(text: 'SoftCream'),
                        CartPageChip(text: 'Bannana'),
                        CartPageChip(text: 'Extra Chip'),
                      ],
                    ),
                    const Gap(AppSizes.kspace10),
                    Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Text(
                          x.price,
                          style: context.text.headlineLarge?.copyWith(
                            fontFamily: 'fredoka',
                            color: context.color.secondary,
                          ),
                        ),
                        ActionSlider.standard(
                          action: (controller) async {
                            controller.loading();
                            await Future.delayed(const Duration(seconds: 1));
                            controller.success();
                            showDialog(
                              context: context,
                              builder: (context) {
                                Future.delayed(const Duration(seconds: 2), () {
                                  // ignore: use_build_context_synchronously
                                  context.pop();
                                });
                                return Lottie.asset(
                                  'assets/lootie/Check Mark.json',
                                  repeat: false,
                                  height: 100,
                                );
                              },
                            );
                            controller.reset();
                          },
                          width: 200,
                          height: 40,
                          toggleColor: context.color.primary,
                          icon: Icon(
                            Icons.shopping_bag,
                            size: AppSizes.kiconXl,
                            color: context.color.secondary,
                          ),
                          child: Center(
                            child: Text(
                              'Buy Now',
                              style: context.text.bodyLarge?.copyWith(
                                fontFamily: 'poppins',
                                color: context.color.primary,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Gap(AppSizes.kspace10),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
