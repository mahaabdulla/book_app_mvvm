import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewImage extends StatelessWidget {
  const CustomListViewImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: AssetImage(AssetsData.slamdunk),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
