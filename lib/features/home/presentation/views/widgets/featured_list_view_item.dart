import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/home/data/models/book_models/book_model.dart';
import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
class FeaturedListViewItem extends StatelessWidget
{
  const FeaturedListViewItem({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => BookDetailsView(bookModel: bookModel),));
      },
      child: ClipRRect(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        borderRadius: BorderRadius.circular(16),
        child: CachedNetworkImage(
          errorWidget: (context, url, error) => const Icon(Icons.error),
          placeholder: (context, url) => const CustomLoadingIndicator(),
          imageUrl: '${bookModel.volumeInfo?.imageLinks?.thumbnail}',
          width: 150,
          height: 224,
          fit: BoxFit.fill,
        ),
      ),
    );

  }

}
