import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_view.dart';
import 'package:flutter/material.dart';
class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const BookDetailsView(),)),
      child: const SizedBox(
        width: 150,
        height: 224,
        child: Image(
          fit: BoxFit.fill,
          image: AssetImage(AssetsData.testImage),
        ),
      ),
    );
  }
}
