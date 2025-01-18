import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presention/view/widgets/custome_appbar_books_detils.dart';
import 'package:bookly_app/features/home/presention/view/widgets/custome_Book_images.dart';
import 'package:flutter/material.dart';

class BookViewDetailsBody extends StatelessWidget {
  const BookViewDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              const CustomeAppBarBooksDetails(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.12),
                child: const CustomBookImage(),
              ),
              const SizedBox(height: 20),
              const Text(
                'The Jungle Book',
                style: Styles.textStyle20,
              ),
              const SizedBox(height: 10),
              const Opacity(opacity: 0.7, child: Text('The Jungle Book')),
            ],
          ),
        ),
      ),
    );
  }
}
