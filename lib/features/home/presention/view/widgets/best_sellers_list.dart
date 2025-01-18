import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presention/view/widgets/books_ratings_items.dart';
import 'package:flutter/material.dart';

class BestSellersList extends StatelessWidget {
  const BestSellersList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: SizedBox(
        height: 120,
        child: Row(children: [
          AspectRatio(
            aspectRatio: 3 / 4,
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage(AssetsData.haikyu)))),
          ),
          const SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: const Text(
                    'data kjiu  oiu pk aret aoakdiuy',
                    style: Styles.textStyle18,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )),
              const SizedBox(height: 10),
              const Text('3.5 reviw'),
              const Row(
                children: [
                  Text('39\$'),
                  SizedBox(
                    width: 100,
                  ),
                  BooksRitingItems(),
                ],
              )
            ],
          )
        ]),
      ),
    );
  }
}
