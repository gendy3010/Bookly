import 'package:bookly_app/core/Utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/Best%20Seller%20Item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/Custom%20App%20Bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/Featured%20Books%20Listview.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/bestSeller%20ListView.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: const FeaturedAppBar(),
                ),
                const FeaturedBooksListView(),
                SizedBox(
                  height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Best Seller',
                    style: Styles.textStyle18,),
                ),
                const SizedBox(
                  height: 20,),

              ],
            ),),
          SliverFillRemaining(
            child:BestSellerListView(),
          )
        ],
      )
    );

  }
}

