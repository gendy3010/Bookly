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
                  const CustomBookDetailsAppBar(),
                  const BookDetailsSection(),
                  const SizedBox(
                    height: 18,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * .17),
                    child: const CustomBookImage(
                      imageUrl: 'data:image/jpeg;base64,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',
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(
                      height: 40,
                    ),
                  ),
                  const Text(
                    'The Jungle Book',
                    style: Styles.textStyle30,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Text(
                    'Rudyard Kipling',
                    style: Styles.textStyle18,
                  ),
                  const BookRating(
                    rating: 4,
                    count: 4,
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const BookActions(),
                  const SizedBox(
                    height: 18,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'You can also like',
                      style: Styles.textStyle15,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const SimilarBooksListView(),
                  const SizedBox(
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
