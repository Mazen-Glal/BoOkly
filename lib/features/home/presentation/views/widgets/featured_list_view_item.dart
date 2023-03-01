import 'package:flutter/material.dart';
class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({Key? key, required this.imageUrl}) : super(key: key);
  final String? imageUrl;
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 150,
      height: 224,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(imageUrl!)
        )
      ),
    );
  }
}
