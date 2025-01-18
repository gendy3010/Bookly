import 'package:bookly_app/core/Utils/functions/url%20luncher.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/Utils/widgets/custom Button.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
                onPressed: ()async
                {

                },
                title: 'Free',
                fontSize: 18,
                backgroundColor: Colors.white,
                textColor: Colors.black,
                borderRadius: BorderRadius.only(
                    topLeft:Radius.circular(16),
                    bottomLeft: Radius.circular(16)),
              )),
          Expanded(
              child: CustomButton(
                onPressed: ()async
                {
                 lunchCustomUr(context, bookModel.volumeInfo.previewLink);
                },                title: getText(bookModel),
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


String getText(BookModel bookModel){
  if(bookModel.volumeInfo.previewLink == null){
    return 'Not Available';
  }else{
    return 'Preview';
  }
}