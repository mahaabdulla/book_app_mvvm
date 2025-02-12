import 'package:bookly_app/core/constant/const.dart';
import 'package:bookly_app/core/utils/routs.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/repos/implement_home_repo.dart';
import 'package:bookly_app/features/home/presention/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presention/manager/newset_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presention/view/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // تأكد من استيرادها

void main() {
  setupServiceLocator();
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (ctx) =>
                FeaturedBooksCubit(getIt.get<ImplementHomeRepo>())),
        BlocProvider(
            create: (ctx) => NewestBooksCubit(getIt.get<ImplementHomeRepo>()))
      ],
      child: GetMaterialApp(
        onGenerateRoute: AppRoute.generatedRoute,
        initialRoute: '/home',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          // textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        home: const Home(),
      ),
    );
  }
}
