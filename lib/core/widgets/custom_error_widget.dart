import 'package:bookly/core/utils/styles.dart';
import'package:flutter/material.dart';
class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({Key? key, required this.errorMessage}) : super(key: key);
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Center(child: Text(errorMessage,style: Styles.rate16,textAlign: TextAlign.center,)),
    );
  }
}
