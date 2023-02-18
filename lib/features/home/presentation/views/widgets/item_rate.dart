import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
class ItemRate extends StatelessWidget {
  const ItemRate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(Icons.star,color: Color(0xffFFDD4F),),
        SizedBox(width: 5,),
        Text('4.8',style: Styles.rate16),
        SizedBox(width: 5,),
        Text('(2390)',style: Styles.authorTitle14),
      ],
    );
  }
}


