import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widget/booking_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: Row(
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
          Expanded(
            child: Column(
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
                Row(
                  children: [
                  Text('19.9&',
                    style: Styles.textStyle20.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  const BookRating(),
                ],),
              ],
            ),
          ),
        ],
      ),
    );
  }
}