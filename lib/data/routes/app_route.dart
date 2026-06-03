import 'package:go_router/go_router.dart';
import 'package:scoopia/data/model/product.dart';
import 'package:scoopia/features/pages/cart_page.dart';
import 'package:scoopia/features/pages/home_page.dart';
import 'package:scoopia/features/pages/onboarding_page.dart';

class AppRoute {
  static final GoRouter approute = GoRouter(
    initialLocation: '/onboard',
    routes: [
      GoRoute(
        path: '/onboard',
        builder: (context, state) => const OnboardingPage(),
      ),
      GoRoute(path: '/home', builder: (context, state) => const HomePage()),
      GoRoute(
        path: '/cart',
        builder: (context, state) {
          final item = state.extra as Product;
          return CartPage(x: item);
        },
      ),
    ],
  );
}
