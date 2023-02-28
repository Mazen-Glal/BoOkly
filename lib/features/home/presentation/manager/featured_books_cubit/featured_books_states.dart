import 'package:bookly/features/home/data/models/book_models/book_model.dart';

abstract class FeaturedBooksStates{
  const FeaturedBooksStates();

  List<Object> get props => [];

}

class FeaturedBookInitialState extends FeaturedBooksStates{}

class FeaturedBookLoadingState extends FeaturedBooksStates{}
class FeaturedBookSuccessState extends FeaturedBooksStates{
  final List<BookModel> books;
  const FeaturedBookSuccessState(this.books);
}
class FeaturedBookFailureState extends FeaturedBooksStates{
  final String errorMessage;
  const FeaturedBookFailureState(this.errorMessage);
}