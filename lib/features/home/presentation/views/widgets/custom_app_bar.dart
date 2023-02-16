import 'package:flutter/material.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 24.0,vertical: 40),
      child: Row(
        children: [
          const Image(
            image: AssetImage(AssetsData.logo),
            height: 18.1,
            width: 75,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                color: Colors.white,
                size: 22,
              )
          )
        ],
      ),
    );
  }
}
