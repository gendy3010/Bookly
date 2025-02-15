import 'package:bookly_app/core/Utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment= MainAxisAlignment.start, required this.rating, required this.count,
  });
final MainAxisAlignment mainAxisAlignment;
final num rating;
final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(Icons.star,
          color: Colors.yellow,
        ),
        SizedBox(width: 5,),
        Text(rating.toString(),style: Styles.textStyle16,),
        SizedBox(width: 5,),
        Text('($count)',style: Styles.textStyle16.copyWith(fontWeight: FontWeight.normal,color: Colors.grey),),
      ],
    );
  }
}
