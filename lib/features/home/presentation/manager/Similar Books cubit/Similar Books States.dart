


import '../../../data/models/book_model/book_model.dart';

abstract class SimilarBooksStates {}
class SimilarBooksInitialState extends SimilarBooksStates{}
class SimilarBooksILoadingState extends SimilarBooksStates{}
class SimilarBooksSuccessState extends SimilarBooksStates{
  final List<BookModel> books;

  SimilarBooksSuccessState(this.books);
}
class SimilarBooksFailureState extends SimilarBooksStates{
  final String errorMessage;

  SimilarBooksFailureState(this.errorMessage);
}

