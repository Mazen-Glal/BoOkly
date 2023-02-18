import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
class BooksAction extends StatelessWidget {
  const BooksAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: CustomButton(
              textColor: Colors.black,
              onPressed: () {},
              buttonStyle:  const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color(0xffFFFFFF)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.horizontal(left: Radius.circular(16))
                  ))
              ),
              text: '19.99€',
            )),
        Expanded(
            child: CustomButton(
              onPressed: () {},
              buttonStyle: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color(0xffEF8262)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.horizontal(right: Radius.circular(16))
                  ))
              ),
              text: 'Free Preview',
            )),
      ],
    );
  }
}
