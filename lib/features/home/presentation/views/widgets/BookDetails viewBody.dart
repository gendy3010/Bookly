import 'package:bookly_app/core/Utils/styles.dart';
import 'package:bookly_app/core/Utils/widgets/custom%20Button.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/Book%20Rating.dart';
import 'package:flutter/material.dart';

import 'Custom App Bar.dart';
import 'CustomBook Details Appbar.dart';
import 'custom BookImage.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            CustomBookDetailsAppBar(),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: width * .12),
              child: CustomBookImage(),
            ),
            const SizedBox(
              height: 10,),
            Text(
              'The Jungle Book',style: Styles.textStyle30,),
            const SizedBox(
              height: 6,),
            Text(
              'Rudyard Kipling',style: Styles.textStyle18,),
            const SizedBox(
              height: 18,),
            BookRating(
              mainAxisAlignment: MainAxisAlignment.center,),
            BookActions(),
          ],
        ),
      ),
    );
  }
}


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
