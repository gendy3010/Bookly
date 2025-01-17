
import 'package:bookly_app/core/Utils/widgets/Custom%20error%20widget.dart';
import 'package:bookly_app/core/Utils/widgets/CustomLoading%20Indecator.dart';
import 'package:bookly_app/features/home/presentation/manager/Newest%20Books%20cubit/NewestBooks%20Cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/Newest%20Books%20cubit/NewestBooks%20States.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bestseller listview.dart';

class BooksListViewItems extends StatelessWidget {
  const BooksListViewItems({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<NewestBooksCubit,NewestBooksStates>(
      builder: (context,state){
        if (state is NewestBooksSuccessState){
          return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.only(left: 10,right: 10),
              itemCount: state.books.length,
              itemBuilder: (context,index){return  Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: BookListviewItem(
                  bookModel: state.books[index],
                ),
              );});
      }else if(state is NewestBooksFailureState){
          return CustomErrorWidget(errorMessage: state.errorMessage);
        }else{
          return CustomLoadingIndicator();
        }
      },

    );
  }
}
