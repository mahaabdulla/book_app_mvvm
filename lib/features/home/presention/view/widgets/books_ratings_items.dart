import 'package:flutter/material.dart';

class BooksRitingItems extends StatelessWidget {
  const BooksRitingItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text('39'),
        SizedBox(width: 80),
        Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        SizedBox(width: 4),
        Text('34'),
        SizedBox(width: 10),
        Text('(60)'),
      ],
    );
  }
}
