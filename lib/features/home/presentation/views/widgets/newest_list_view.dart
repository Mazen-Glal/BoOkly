import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/newest_books_cubit/newest_books_states.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestListView extends StatelessWidget {
  const NewestListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit,NewestBooksStates>(
      builder: (context, state) {
        if(state is NewestBooksSuccessState) {
          return ListView.separated(
        itemBuilder: (context, index) => BookListViewItem(bookModel: state.books[index]),
        separatorBuilder: (context, index) => const SizedBox(height: 20,),
        itemCount: state.books.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
      );
        }else if(state is NewestBooksFailureState){
          return CustomErrorWidget(errorMessage: state.errorMessage);
        }else{
          return const Padding(
            padding: EdgeInsets.only(top: 300.0),
            child: CustomLoadingIndicator(),
          );
        }
      },
    );
  }
}
