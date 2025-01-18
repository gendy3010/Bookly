import 'package:bookly_app/core/Utils/widgets/Custom%20error%20widget.dart';
import 'package:bookly_app/core/Utils/widgets/CustomLoading%20Indecator.dart';
import 'package:bookly_app/features/home/presentation/manager/Similar%20Books%20cubit/Similar%20Books%20Cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/Similar%20Books%20cubit/Similar%20Books%20States.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/Utils/App Router.dart';
import 'custom BookImage.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit,SimilarBooksStates>(
      builder: (context,state){
        if (state is SimilarBooksSuccessState){
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: ListView.builder(
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context , index) {
                  return GestureDetector(
                    onTap: (){
                      GoRouter.of(context).push(AppRouter.kBookDetailsView,
                          extra: state.books[index]);
                    },
                    child: CustomBookImage(
                    imageUrl: state.books[index].volumeInfo.imageLinks!.thumbnail,                  ),
                  );
                },
              ),
            ),
          );
        }else if(state is SimilarBooksFailureState){
          return CustomErrorWidget(errorMessage: state.errorMessage);
        }else{
          return Center(child: CustomLoadingIndicator(),);
        }
      },
    
    );
  }
}
