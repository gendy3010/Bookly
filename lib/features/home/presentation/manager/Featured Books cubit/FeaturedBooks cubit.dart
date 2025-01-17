import 'package:bloc/bloc.dart';

import '../../../data/repos/home repo.dart';
import 'FeaturedBooks states.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates>{
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitialState());
  final HomeRepo  homeRepo;
  Future<void> fetchFeaturdbooks()async{
    emit(FeaturedBooksILoadingState());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedBooksFailureState(failure.errorMessage));
    }, (books) {
      emit(FeaturedBooksSuccessState(books));
    });
  }

}