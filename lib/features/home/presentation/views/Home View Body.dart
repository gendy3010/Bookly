import 'package:bookly_app/core/Utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/Book%20ListView%20items.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/Custom%20App%20Bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/Featured%20Books%20Listview.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
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
                    'Newest Books',
                    style: Styles.textStyle18,),
                ),
                const SizedBox(
                  height: 20,),

              ],
            ),),
          SliverFillRemaining(
            child:BooksListViewItems(),
          )
        ],
      )
    );

  }
}

