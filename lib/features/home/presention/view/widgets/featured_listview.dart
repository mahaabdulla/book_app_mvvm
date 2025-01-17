
import 'package:bookly_app/features/home/presention/view/widgets/custome_listview_images.dart';
import 'package:flutter/material.dart';

class FeaturedListview extends StatelessWidget {
  const FeaturedListview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) {
          return CustomListViewImage();
        },
      ),
    );
  }
}
