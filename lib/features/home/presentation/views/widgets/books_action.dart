import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/features/home/data/models/book_models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: CustomButton(
          textColor: Colors.black,
          onPressed: () {},
          buttonStyle: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Color(0xffFFFFFF)),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.horizontal(left: Radius.circular(16))))),
          text: 'Free',
        )),
        Expanded(
            child: CustomButton(
          onPressed: () async {
            Uri uri = Uri.parse(bookModel.volumeInfo!.previewLink!);
            if (await canLaunchUrl(uri)) {
              await launchUrl(uri);
            }
          },
          buttonStyle: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Color(0xffEF8262)),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.horizontal(right: Radius.circular(16))))),
          text: getText(bookModel),
        )),
      ],
    );
  }

  String getText(BookModel bookModel) {
    if(bookModel.volumeInfo!.previewLink==null){
      return 'Not Avaliable';
    }else{
      return 'Preview';
    }
  }
}
