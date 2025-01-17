import 'package:flutter/material.dart';

class CustomeAppBarBooksDetails extends StatelessWidget {
  const CustomeAppBarBooksDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.close,
            size: 30,
          ),
          Icon(Icons.shopping_cart)
        ],
      ),
    );
  }
}
