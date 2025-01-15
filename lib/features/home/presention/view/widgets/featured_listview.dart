import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeaturedListview extends StatelessWidget {
  const FeaturedListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index){
        return  AspectRatio(
          aspectRatio: 2.7 / 4,
          child: Container(
            margin: const EdgeInsets.all(15),
            width: 160,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    image: AssetImage(AssetsData.slamdunk), fit: BoxFit.cover)),
          ),
        );
      }),
    );
  }
}