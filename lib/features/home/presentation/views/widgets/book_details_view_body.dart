import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/item_rate.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_book_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

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
                const SizedBox(height: 36),
                const SizedBox(
                    width: 210,
                    height: 284,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: FeaturedListViewItem(),
                    )),
                const SizedBox(
                  height: 13,
                ),
                SizedBox(
                  width: 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'The Jungle Book',
                        style: Styles.bookTitle20.copyWith(fontSize: 29),
                        maxLines: 2,
                      ),
                      const SizedBox(height: 9),
                      Text('Rudyard Book ',
                          style: Styles.authorTitle14.copyWith(fontSize: 19)),
                      const SizedBox(height: 17),
                      const ItemRate(),
                    ],
                  ),
                ),
                const SizedBox(height: 41),
                const BooksAction(),
                const Expanded(child: SizedBox(height: 48)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'you can also like',
                    style: Styles.authorTitle14.copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(height: 20),
                const SimilarBooksListView(),
              ],
            ),
          ),
        )
      ],
    );
  }
}

