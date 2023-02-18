import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/item_rate.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomBookDetailsAppBar(),
          const SizedBox(height: 5),
          const SizedBox(
            width: 210,
            height: 284,
            child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: FeaturedListViewItem(),
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
        ],
      ),
    );
  }
}
