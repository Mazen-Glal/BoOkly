import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
class FeaturedListViewItem extends StatelessWidget
{
  const FeaturedListViewItem({Key? key, required this.imageUrl}) : super(key: key);
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {

    return ClipRRect(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      borderRadius: BorderRadius.circular(16),
      child: CachedNetworkImage(
        errorWidget: (context, url, error) => const Icon(Icons.error),
        placeholder: (context, url) => const CustomLoadingIndicator(),
        imageUrl: imageUrl!,
        width: 150,
        height: 224,
        fit: BoxFit.fill,
      ),
    );

  }

}
