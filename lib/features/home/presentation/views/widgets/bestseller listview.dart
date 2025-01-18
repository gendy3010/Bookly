import 'package:bookly_app/features/home/presentation/views/widgets/custom%20BookImage.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/Utils/App Router.dart';
import '../../../../../core/Utils/styles.dart';
import '../../../data/models/book_model/book_model.dart';
import 'Book Rating.dart';

class BookListviewItem extends StatelessWidget {
  const BookListviewItem({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

        GoRouter.of(context).push(AppRouter.kBookDetailsView,
        extra: bookModel);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookImage(
                imageUrl: bookModel.volumeInfo.imageLinks!.thumbnail),
            const SizedBox(
              width:  30,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle18,
                    ),
                  ),
                  SizedBox(
                    height: 3,),
                  Text(
                    bookModel.volumeInfo.authors![0],
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle12,
                  ),
                  SizedBox(
                    height: 3,),
                  Row(
                    children: [
                      Text(
                        'Free',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle19,
                      ),
                      Spacer(),
                      BookRating(
                        rating: bookModel.volumeInfo.averageRating?? 0,
                      count: bookModel.volumeInfo.ratingsCount??0,),

                    ],
                  ),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
