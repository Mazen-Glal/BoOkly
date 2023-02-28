import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBookCubit extends Cubit<FeaturedBooksStates>{

  FeaturedBookCubit():super(FeaturedBookInitialState());

  static FeaturedBookCubit get(context)=> BlocProvider.of(context);

}