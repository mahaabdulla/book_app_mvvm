import 'package:bookly_app/features/home/presention/view/widgets/small_listview_image.dart';
import 'package:flutter/material.dart';

class SimilerBookSection extends StatelessWidget {
  const SimilerBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 50),
        Text('See More', textAlign: TextAlign.left),
        SmallListViewImages(),
      ],
    );
  }
}
