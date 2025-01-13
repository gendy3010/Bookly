
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Best Seller Item.dart';

class BooksListViewItems extends StatelessWidget {
  const BooksListViewItems({super.key});

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.only(left: 10,right: 10),
        itemCount: 16,
        itemBuilder: (context,index){return  Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: BestSellerItem(),
        );});
  }
}
