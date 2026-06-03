import 'package:action_slider/action_slider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scoopia/core/const/app_sizes.dart';
import 'package:scoopia/core/extensions/app_extensions.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.primary,
      body: Stack(
        children: [
          Image.asset(
            'assets/images/download.webp',
            height: context.height,
            fit: .cover,
          ),
          Positioned(
            bottom: 10,
            left: 5,
            child: Container(
              height: context.height * .3,
              width: context.width * .97,
              decoration: BoxDecoration(
                color: Color(0xff89410c),
                borderRadius: .circular(AppSizes.kspace32),
              ),
              child: Padding(
                padding: const .all(8.0),
                child: Column(
                  mainAxisAlignment: .spaceBetween,
                  crossAxisAlignment: .center,
                  children: [
                    Column(
                      mainAxisSize: .min,
                      crossAxisAlignment: .center,
                      children: [
                        Text(
                          'Hot & Fresh',
                          textAlign: .center,
                          style: context.text.displaySmall?.copyWith(
                            fontFamily: 'fredoka',
                          ),
                        ),
                        Text(
                          'Waffles Anytime',
                          textAlign: .center,
                          style: context.text.displaySmall?.copyWith(
                            fontFamily: 'fredoka',
                          ),
                        ),
                      ],
                    ),
                    Text(
                      textAlign: .center,
                      'Discover handcraffted waffles made with premium ingredients.Customize your toppings and enjoy every bite.',
                      style: context.text.bodyMedium?.copyWith(
                        fontFamily: 'poppins',
                      ),
                    ),
                    ActionSlider.standard(
                      width: 300,
                      backgroundBorderRadius: .circular(AppSizes.kradiusXl),
                      toggleColor: Color(0xffdfa413),
                      height: 50,
                      action: (controller) async {
                        controller.loading();
                        await Future.delayed(const Duration(seconds: 1));
                        controller.success();
                        context.go('/home');
                      },
                      child: Center(
                        child: Text(
                          'Get Started >>>',
                          style: context.text.bodyMedium?.copyWith(
                            fontFamily: 'poppins',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
