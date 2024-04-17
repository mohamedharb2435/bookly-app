import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 7,),
        const Text('Read Free Books',
        style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w100),
        textAlign:TextAlign.center,
        ),
      ],
    );
  }
}
