import 'package:flutter/material.dart';
import 'custom-search-text-field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30),
      child:  Column(
        children: [
          CustomSearchTextField()
        ],
      ),
    );
  }
}


