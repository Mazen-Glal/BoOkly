import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      onChanged: (value) {

      },
      onSubmitted: (value) {

      },
      decoration: InputDecoration(
        suffixIcon: const Opacity(
          opacity: 0.8,
          child: Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: Colors.white,
              size: 18,
            ),
        ),
        hintText: 'Search',
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12)
        ),
        // enabledBorder: OutlineInputBorder(
        //   borderSide: const BorderSide(
        //     color: Colors.white
        //   ),
        //   borderRadius: BorderRadius.circular(12)
        // ),
        focusedBorder: OutlineInputBorder(
              borderSide:const  BorderSide(
                  color: Colors.white
              ),
              borderRadius: BorderRadius.circular(12)
          )
      ),
    );
  }
}
