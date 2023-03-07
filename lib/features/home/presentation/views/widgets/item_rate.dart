import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
class ItemRate extends StatelessWidget {
  const ItemRate({
    super.key,
    required this.rating,
    required this.count,
  });
  final double rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        const Icon(Icons.star,color: Color(0xffFFDD4F),),
        const SizedBox(width: 5,),
        Text('$rating',style: Styles.rate16),
        const SizedBox(width: 5,),
        Text('($count)',style: Styles.authorTitle14),
      ],
    );
  }
}


