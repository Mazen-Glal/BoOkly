import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_models/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo_imple.dart';
import 'package:bookly/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/item_rate.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_book_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 15),
                const CustomBookDetailsAppBar(),
                const SizedBox(height: 20),
                SizedBox(
                    width: 210,
                    height: 284,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: FeaturedListViewItem(
                        bookModel: bookModel,
                      ),
                    )
                ),
                const SizedBox(
                  height: 13,
                ),
                SizedBox(
                  width: 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '${bookModel.volumeInfo!.title}',
                        style: Styles.bookTitle20.copyWith(fontSize: 29),
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 9),
                      Text(
                          bookModel.volumeInfo!.authors![0],
                          style: Styles.authorTitle14.copyWith(fontSize: 19)),
                      const SizedBox(height: 17),
                      const ItemRate(
                        count: 250,
                        rating: 5,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 41),
                BooksAction(
                  bookModel: bookModel,
                ),
                const Expanded(child: SizedBox(height: 48)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'you can also like',
                    style: Styles.authorTitle14.copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(height: 20),
                BlocProvider(
                    create: (context) => SimilarBooksCubit(HomeRepoImple())..fetchSimilarBooks(category: bookModel.volumeInfo!.categories![0]),

                    child: const SimilarBooksListView()),
                const SizedBox(height: 30)
              ],
            ),
          ),
        )
      ],
    );
  }
}

