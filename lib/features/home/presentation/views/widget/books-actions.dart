import 'package:bookly_app/core/utils/widgets/custom-button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              backGround: Colors.white,
              textColor: Colors.black,
              text:'19.9%',
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft:  Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              backGround: Color(0xffEF8262),
              textColor: Colors.white,
              text:'Free Preview',
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight:  Radius.circular(16),
              ),
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}