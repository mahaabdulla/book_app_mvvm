import 'package:bookly_app/features/home/presention/view/book_view_details.dart';
import 'package:bookly_app/features/home/presention/view/home.dart';
import 'package:bookly_app/features/splash/presention/view/splash_view.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static Route<dynamic>? generatedRoute(RouteSettings route) {
    switch (route.name) {
      case '/splash':
        return MaterialPageRoute(builder: (ctx) => const SplashView());
      case '/home':
        return MaterialPageRoute(builder: (ctx) => const Home());
      case '/book_details':
        return MaterialPageRoute(builder: (ctx) => const BookViewDetails());
    }
  }
}
