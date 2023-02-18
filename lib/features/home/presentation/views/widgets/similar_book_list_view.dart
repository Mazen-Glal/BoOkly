import 'package:bookly/features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';
class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const SizedBox(width: 80, child: FeaturedListViewItem()),
          itemCount: 15
      ),
    );
  }
}
