import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/item_rate.dart';
import 'package:flutter/material.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const BookDetailsView(),)),
      child: Container(
        padding: const EdgeInsets.only(left: 24,right: 24,bottom: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            const SizedBox(
              height: 130,
              child: Image( image: AssetImage(AssetsData.testImage)),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.55,
                  child: const Text(
                    'Harry Potter and the Goblet of Fire',
                    style: Styles.bookTitle20,
                    maxLines: 2,
                  ),
                ),
                const SizedBox(height: 3,),
                const Text('Rudyard Book',style: Styles.authorTitle14,),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text('19.99 ',style: Styles.price15,),
                            Icon(FontAwesomeIcons.dollarSign,size: 15,),
                          ],
                        ),
                      ),
                      const ItemRate()
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

