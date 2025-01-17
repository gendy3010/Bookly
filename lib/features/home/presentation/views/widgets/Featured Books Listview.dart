import 'package:bookly_app/core/Utils/widgets/Custom%20error%20widget.dart';
import 'package:bookly_app/core/Utils/widgets/CustomLoading%20Indecator.dart';
import 'package:bookly_app/features/home/presentation/manager/Featured%20Books%20cubit/FeaturedBooks%20cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/Featured%20Books%20cubit/FeaturedBooks%20states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom BookImage.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit ,FeaturedBooksStates>(
      builder: (context,state){
        if(state is FeaturedBooksSuccessState){
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context , index) {
                  return CustomBookImage(
                    imageUrl: state.books[index].volumeInfo.imageLinks!.thumbnail,
                  );
                },
                itemCount: state.books.length,
              ),
            ),
          );
        }else if(state is FeaturedBooksFailureState){
          return CustomErrorWidget(errorMessage: state.errorMessage);
        }else{
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
