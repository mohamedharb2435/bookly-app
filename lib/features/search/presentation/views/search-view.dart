import 'package:flutter/material.dart';

import 'widget/search-view-body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child:  SearchViewBody(),
      ),
    );
  }
}
