import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/Utils/App Router.dart';
import '../../../../../core/Utils/assets.dart';
import '../../../../../core/Utils/styles.dart';
import 'Book Rating.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.6/4,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3 ,
                decoration: BoxDecoration(
                  color: Colors.orange,
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(AssetsData.test,
                        ))
                ),
              ),
            ),
            const SizedBox(
              width:  30,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Text(
                      'Harry Potter and The Globet of Fire',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle18,
                    ),
                  ),
                  SizedBox(
                    height: 3,),
                  Text(
                    'J.K. Rowling',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle12,
                  ),
                  SizedBox(
                    height: 3,),
                  Row(
                    children: [
                      Text(
                        '19.99 \$',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle19,
                      ),
                      Spacer(),
                      BookRating(),

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
