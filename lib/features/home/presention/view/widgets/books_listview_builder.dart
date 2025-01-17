import 'package:bookly_app/features/home/presention/view/widgets/best_sellers_list.dart';
import 'package:flutter/material.dart';

class BooksListViewBuilder extends StatelessWidget {
  const BooksListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
       physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (ctx, index) {
        return const BestSellersList();
      },
    );
  }
}
