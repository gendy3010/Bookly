import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/Utils/widgets/custom Button.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
                title: '19.99 \$',
                fontSize: 18,
                backgroundColor: Colors.white,
                textColor: Colors.black,
                borderRadius: BorderRadius.only(
                    topLeft:Radius.circular(16),
                    bottomLeft: Radius.circular(16)),
              )),
          Expanded(
              child: CustomButton(
                title: 'Free Preview',
                fontSize: 16,
                backgroundColor: Color(0xffEF8262),
                textColor: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight:Radius.circular(16),
                    bottomRight: Radius.circular(16)),
              )),

        ],
      ),
    );
  }
}
