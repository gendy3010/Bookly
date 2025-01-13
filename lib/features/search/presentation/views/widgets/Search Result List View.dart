import 'package:flutter/cupertino.dart';


import '../../../../home/presentation/views/widgets/Best Seller Item.dart';

class SearchResultListview extends StatelessWidget {
  const SearchResultListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.only(left: 10,right: 10),
        itemCount: 16,
        itemBuilder: (context,index){return  Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: BestSellerItem(),
        );});
  }
}
