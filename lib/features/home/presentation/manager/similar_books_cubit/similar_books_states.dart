import 'package:bookly/features/home/data/models/book_models/book_model.dart';

abstract class SimilarBooksStates{
  const SimilarBooksStates();
  List<Object> get props => [];
}

class SimilarBooksInitialState extends SimilarBooksStates{}

class SimilarBooksLoadingState extends SimilarBooksStates{}
class SimilarBooksSuccessState extends SimilarBooksStates{
  final List<BookModel> books;
  const SimilarBooksSuccessState(this.books);
}
class SimilarBooksFailureState extends SimilarBooksStates{
  final String errorMessage;
  const SimilarBooksFailureState(this.errorMessage);
}