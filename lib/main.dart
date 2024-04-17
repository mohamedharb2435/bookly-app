import 'package:bookly_app/constant.dart';
import 'package:flutter/material.dart';
import 'features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      debugShowCheckedModeBanner: false,
      home:const SplashView(),
    );
  }
}

