import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_states.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBookCubit, FeaturedBooksStates>(
      builder: (context, state) {
        if (state is FeaturedBookSuccessState) {
          return Container(
            padding: const EdgeInsets.only(left: 24.0),
            height: 224,
            child: ListView.separated(
              itemBuilder: (context, index) => FeaturedListViewItem(imageUrl: state.books[index].volumeInfo!.imageLinks!.thumbnail,),
              separatorBuilder: (context, index) => const SizedBox(width: 15),
              itemCount: state.books.length,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
            ),
          );
        } else if (state is FeaturedBookFailureState) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
