import 'package:action_slider/action_slider.dart';
import 'package:flutter/material.dart';
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
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 10,
            left: 5,
            child: Container(
              height: context.height * .3,
              width: context.width * .97,
              decoration: BoxDecoration(
                color: Color(0xff89410c),
                borderRadius: BorderRadius.circular(AppSizes.kspace32),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Hot & Fresh',
                          textAlign: TextAlign.center,
                          style: context.text.displaySmall?.copyWith(
                            fontFamily: 'codebold',
                          ),
                        ),
                        Text(
                          'Waffles Anytime',
                          textAlign: TextAlign.center,
                          style: context.text.displaySmall?.copyWith(
                            fontFamily: 'codebold',
                          ),
                        ),
                      ],
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      'Discover handcraffted waffles made with premium ingredients.Customize your toppings and enjoy every bite',
                      style: context.text.bodyMedium?.copyWith(
                        fontFamily: 'poppins',
                      ),
                    ),
                    ActionSlider.standard(
                      width: 300,
                      backgroundBorderRadius: BorderRadius.circular(
                        AppSizes.kradiusMd,
                      ),
                      toggleColor: Color(0xffdfa413),
                      height: 50,
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
