import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presention/view/widgets/custome_appbar.dart';
import 'package:bookly_app/features/home/presention/view/widgets/custome_listview_images.dart';
import 'package:bookly_app/features/home/presention/view/widgets/featured_listview.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          CustomeAppBar(),
          FeaturedListview(),
          // CustomeListViewImage()
          SizedBox(height: 20),
          Text(
            'Best Sellers',
            style: Styles.titleMedum,
          )
        ],
      ),
    );
  }
}
