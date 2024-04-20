import 'package:flutter/material.dart';

import 'best-seller-list-view-iteam.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListViewItem(),
          ),
        );
      },
    );
  }
}