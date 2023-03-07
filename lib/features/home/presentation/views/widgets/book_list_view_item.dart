import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_models/book_model.dart';
import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/item_rate.dart';
import 'package:flutter/material.dart';
class BookListViewItem extends StatelessWidget {
  const BookListViewItem({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BookDetailsView(bookModel: bookModel))
      ),
      child: Container(
        padding: const EdgeInsets.only(left: 24,right: 24,bottom: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            SizedBox(
              height: 130,
              width: 90,
              child:FeaturedListViewItem(bookModel: bookModel ),
            ),

            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.55,
                  child: Text(
                    bookModel.volumeInfo!.title!,
                    style: Styles.bookTitle20,
                    maxLines: 2,
                  ),
                ),
                const SizedBox(height: 3,),
                Text(bookModel.volumeInfo!.authors![0],style: Styles.authorTitle14,),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text('Free',style: Styles.price15,),
                          ],
                        ),
                      ),
                      const ItemRate(
                        rating: 5,
                        count: 2587,
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

