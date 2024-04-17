import 'package:bookly_app/features/home/presentation/views/widget/custom-app-bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
           CustomAppBar()
      ],),
    );
  }
}


