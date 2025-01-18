import 'package:bookly_app/core/widgets/custome_bottom.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
            child: CustomeBottom(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
          backgroundColor: Colors.white,
          text: 'Perss Her',
          textColor: Colors.black,
        )),
        //
        Expanded(
            child: CustomeBottom(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
          backgroundColor: Color.fromARGB(255, 255, 172, 77),
          text: 'Perss Her',
          textColor: Colors.black,
        )),
      ],
    );
  }
}
