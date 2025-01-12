import 'package:bookly_app/core/Utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment= MainAxisAlignment.start,
  });
final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(Icons.star,
          color: Colors.yellow,
        ),
        SizedBox(width: 5,),
        Text('4.8',style: Styles.textStyle16,),
        SizedBox(width: 5,),
        Text('(254)',style: Styles.textStyle16.copyWith(fontWeight: FontWeight.normal,color: Colors.grey),),
      ],
    );
  }
}
