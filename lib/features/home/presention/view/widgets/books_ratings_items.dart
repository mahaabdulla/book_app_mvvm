import 'package:flutter/material.dart';

class BooksRitingItems extends StatelessWidget {
  const BooksRitingItems(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});

  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        SizedBox(width: 6),
        Text('34'),
        SizedBox(width: 5),
        Text('(60)'),
      ],
    );
  }
}
