import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/styles.dart';
import 'similar-books-list-view.dart';

class SimilarBooksSections extends StatelessWidget {
  const SimilarBooksSections({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('You Can alo Like',style: Styles.textStyle14.copyWith(
          fontWeight: FontWeight.w700 ,
        ),),
        const SizedBox(height: 16,),
        const SimilarBooksListView(),
      ],
    );
  }
}