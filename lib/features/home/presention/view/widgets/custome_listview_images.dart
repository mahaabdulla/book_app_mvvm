import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomeListViewImage extends StatelessWidget {
  const CustomeListViewImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: SizedBox(
        width: double.infinity,
        height: 240,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (ctx, index) {
            return AspectRatio(
              aspectRatio: 2.7 / 4,
              child: Container(
                margin: EdgeInsets.all(15),
                width: 160,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage(AssetsData.slamdunk),
                        fit: BoxFit.cover)),
              ),
            );
          },
        ),
      ),
    );
  }
}
