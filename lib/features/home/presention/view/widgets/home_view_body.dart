import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presention/view/widgets/best_sellers_list.dart';
import 'package:bookly_app/features/home/presention/view/widgets/books_listview_builder.dart';
import 'package:bookly_app/features/home/presention/view/widgets/custome_appbar.dart';
import 'package:bookly_app/features/home/presention/view/widgets/featured_listview.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomeAppBar(),
            FeaturedListview(),
            // CustomeListViewImage(),
            SizedBox(height: 20),
            Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Text(
                  'Best Sellers',
                  style: Styles.textStyle18,
                )),
            SizedBox(height: 10),
          ],
        )),
        SliverFillRemaining(
          child: BooksListViewBuilder(),
        )
      ],
    ));
  }
}
