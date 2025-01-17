import 'package:bookly_app/core/Utils/api%20service.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/repos/home%20repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../models/book_model/book_model.dart';

class HomeRepoImpl extends HomeRepo {
  ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks()async {
  try{
    var data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:programming');
    List<BookModel> books =[];
    for(var item in data['items']){
      books.add(BookModel.fromJson(item));
    }
    return right(books);
  } catch(e){
    if(e is DioException){
      return left(ServerFailure.fromDioError(e));
    }
    return left(ServerFailure(e.toString(),));
  }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks()async {
    try{
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming');
      List<BookModel> books =[];
      for(var item in data['items']){
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch(e){
      if(e is DioException){
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString(),));
    }
  }
}
