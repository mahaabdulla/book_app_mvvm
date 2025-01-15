import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/home/presention/view/widgets/custome_appbar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const CustomeAppBar(),
          // list of books
          CustomeListViewImage()
        ],
      ),
    );
  }
}

class CustomeListViewImage extends StatelessWidget {
  const CustomeListViewImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(30),
          image: const DecorationImage(
              image: AssetImage(AssetsData.logo), fit: BoxFit.cover)),
    );
  }
}
