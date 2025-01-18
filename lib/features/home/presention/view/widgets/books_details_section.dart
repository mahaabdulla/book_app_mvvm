import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presention/view/widgets/books_ratings_items.dart';
import 'package:bookly_app/features/home/presention/view/widgets/custome_Book_images.dart';
import 'package:bookly_app/features/home/presention/view/widgets/details_book_buttoms.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
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
        const SizedBox(height: 5),
        const BooksRitingItems(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 30),
        const BookAction(),
      ],
    );
  }
}