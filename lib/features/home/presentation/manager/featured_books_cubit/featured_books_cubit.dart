import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBookCubit extends Cubit<FeaturedBooksStates>{

  FeaturedBookCubit(this.homeRepo):super(FeaturedBookInitialState());

  static FeaturedBookCubit get(context)=> BlocProvider.of(context);
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks()async {
    emit(FeaturedBookLoadingState());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
       (failure) {
         emit(FeaturedBookFailureState(failure.errorMessage));
       },
       (books) {
         emit(FeaturedBookSuccessState(books));
       }
    );
  }

}