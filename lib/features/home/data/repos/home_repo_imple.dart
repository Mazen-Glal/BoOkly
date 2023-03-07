import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utils/dio_helper.dart';
import 'package:bookly/features/home/data/models/book_models/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImple extends HomeRepo{
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try{
      List<BookModel> books = [];
      var data = await DioHelper.get(
          endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science'
      );
      for(var item in data['items'])
      {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    }catch(error){
      if(error is DioError)
      {
        return left (ServerFailure.fromDioError(error));
      }
      return left(ServerFailure(error.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async{

    try{
      List<BookModel> books = [];
      var data = await DioHelper.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming'
      );
      for(var item in data['items'])
      {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    }catch(error){

      if(error is DioError)
      {
        return left (ServerFailure.fromDioError(error));
      }
      return left(ServerFailure(error.toString()));
    }

  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category}) async
  {
    try{
      List<BookModel> books = [];
      var data = await DioHelper.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming&Sorting=relevance'
      );
      for(var item in data['items'])
      {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    }catch(error){

      if(error is DioError)
      {
        return left (ServerFailure.fromDioError(error));
      }
      return left(ServerFailure(error.toString()));
    }

  }



}