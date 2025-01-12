import 'package:bookly_app/core/Utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/Book%20Details%20Section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/Book%20Rating.dart';
import 'package:flutter/material.dart';
import 'Books Action.dart';
import 'CustomBook Details Appbar.dart';
import 'Similar Books ListView.dart';
import 'custom BookImage.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Scaffold(
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  CustomBookDetailsAppBar(),
                  BookDetailsSection(),
                  const SizedBox(
                    height: 18,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * .17),
                    child: CustomBookImage(),
                  ),
                  Expanded(
                    child: const SizedBox(
                      height: 40,
                    ),
                  ),
                  Text(
                    'The Jungle Book',
                    style: Styles.textStyle30,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Rudyard Kipling',
                    style: Styles.textStyle18,
                  ),
                  BookRating(
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  BookActions(),
                  SizedBox(
                    height: 18,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'You can also like',
                      style: Styles.textStyle15,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SimilarBooksListView(),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
