import 'package:bookly_app/features/home/presention/view/widgets/custome_Book_images.dart';
import 'package:flutter/material.dart';

class SmallListViewImages extends StatelessWidget {
  const SmallListViewImages({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 8,
          itemBuilder: (ctx, index) {
            return const CustomBookImage();
          }),
    );
  }
}
