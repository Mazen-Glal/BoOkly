import 'package:bookly/features/home/data/models/book_models/book_model.dart';

abstract class NewestBooksStates{
  const NewestBooksStates();

  List<Object> get props => [];

}

class NewestBooksInitialState extends NewestBooksStates{}

class NewestBooksLoadingState extends NewestBooksStates{}
class NewestBooksSuccessState extends NewestBooksStates{
  final List<BookModel> books;
  const NewestBooksSuccessState(this.books);
}
class NewestBooksFailureState extends NewestBooksStates{
  final String errorMessage;
  const NewestBooksFailureState(this.errorMessage);
}