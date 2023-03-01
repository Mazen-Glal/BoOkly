import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/presentation/manager/newest_books_cubit/newest_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksCubit extends Cubit<NewestBooksStates>{

  NewestBooksCubit(this.homeRepo):super(NewestBooksInitialState());

  static NewestBooksCubit get(context)=> BlocProvider.of(context);
  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks()async {

    emit(NewestBooksLoadingState());
    var result = await homeRepo.fetchNewestBooks();
    result.fold(
       (failure){
         emit(NewestBooksFailureState(failure.errorMessage));
       },
       (books) {
         emit(NewestBooksSuccessState(books));
       }
    );

  }

}