import 'package:bookly_app/features/home/presention/view/widgets/custome_appbar_books_detils.dart';
import 'package:flutter/material.dart';

class BookViewDetailsBody extends StatelessWidget {
  const BookViewDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [CustomeAppBarBooksDetails()],
        ),
      ),
    );
  }
}

