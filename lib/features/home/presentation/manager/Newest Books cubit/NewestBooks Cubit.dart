import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/repos/home%20repo.dart';
import 'package:bookly_app/features/home/presentation/manager/Newest%20Books%20cubit/NewestBooks%20States.dart';

class NewestBooksCubit extends Cubit<NewestBooksStates>{
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitialState());
  HomeRepo homeRepo;
  Future<void> fetchNewestBooks()async{
    emit(NewestBooksLoadingState());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure) {
      emit(NewestBooksFailureState(failure.errorMessage));
    }, (books) {
      emit(NewestBooksSuccessState(books));
    });
  }

}