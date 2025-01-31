import 'package:bookly_app/features/home/presention/view/widgets/best_sellers_list.dart';
import 'package:flutter/material.dart';

class BooksListViewBuilder extends StatelessWidget {
  const BooksListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/book_details');
      },
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 15,
        itemBuilder: (ctx, index) {
          return const BestSellersList();
        },
      ),
    );
  }
}
