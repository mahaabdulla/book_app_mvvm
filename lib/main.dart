import 'package:bookly_app/core/constant/const.dart';
import 'package:bookly_app/core/utils/routs.dart';
import 'package:bookly_app/features/home/presention/view/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      onGenerateRoute: AppRoute.generatedRoute,
      initialRoute: '/home',
      debugShowCheckedModeBanner: false,
      // using dart mood
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        // textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),

      home: const Home(),
    );
  }
}
