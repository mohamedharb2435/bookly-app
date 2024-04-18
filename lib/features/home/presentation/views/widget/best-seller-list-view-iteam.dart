import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 125,
          child: AspectRatio(
            aspectRatio: 2.6/4,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AssetsData.testImage),
                  )
              ),
            ),
          ),
        ),
        const SizedBox(width: 30,),
        Column(
          crossAxisAlignment:CrossAxisAlignment.start ,
          children:[
            SizedBox(
              width: MediaQuery.of(context).size.width*.5,
              child:  Text('Harry Potter and The Global of Fire',
                style: Styles.textStyle20.copyWith(
                  fontFamily:kGTSectraFine,
                ),
                maxLines: 2,
              ),
            ),
            const SizedBox(height: 3,),
            const  Text('J.K Rowling',style: Styles.textStyle14,),
            const SizedBox(height: 3,),
            Text('19.9&',
              style: Styles.textStyle20.copyWith(
                fontWeight: FontWeight.bold,
              ),
            )

          ],
        ),
      ],
    );
  }
}