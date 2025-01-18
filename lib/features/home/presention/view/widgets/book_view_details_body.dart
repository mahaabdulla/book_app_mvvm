import 'package:bookly_app/features/home/presention/view/widgets/books_details_section.dart';
import 'package:bookly_app/features/home/presention/view/widgets/custome_appbar_books_detils.dart';
import 'package:bookly_app/features/home/presention/view/widgets/similer_book_section.dart';
import 'package:flutter/material.dart';

class BookViewDetailsBody extends StatelessWidget {
  const BookViewDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomeAppBarBooksDetails(),
                    BooksDetailsSection(),
                    SimilerBookSection()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
