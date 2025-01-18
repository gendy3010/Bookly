import 'package:bookly_app/core/Utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/Book%20Details%20Section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/Book%20Rating.dart';
import 'package:flutter/material.dart';
import 'Books Action.dart';
import 'CustomBook Details Appbar.dart';
import 'Similar Books ListView.dart';
import 'custom BookImage.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Scaffold(
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 29),
              child: Column(
                children: [
                  const CustomBookDetailsAppBar(),
                   BookDetailsSection(
                   book: bookModel,
                  ),
                   BookActions(
                   bookModel: bookModel,
                   ),
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
