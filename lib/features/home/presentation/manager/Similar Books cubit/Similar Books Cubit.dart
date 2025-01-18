import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/repos/home%20repo.dart';
import 'package:bookly_app/features/home/presentation/manager/Similar%20Books%20cubit/Similar%20Books%20States.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksStates>{
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitialState());
  final HomeRepo homeRepo;
  Future<void> fetchSimilarbooks({required String category})async{
    emit(SimilarBooksILoadingState());
    var result = await homeRepo.fetchSimilartBooks(category: category);
    result.fold((failure) {
      emit(SimilarBooksFailureState(failure.errorMessage));
    }, (books) {
      emit(SimilarBooksSuccessState(books));
    });

}}