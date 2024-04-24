import 'package:bookly_app/core/utils/functions/launch-url.dart';
import 'package:bookly_app/core/utils/widgets/custom-button.dart';
import 'package:bookly_app/features/home/presentation/data/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({Key? key, required this.bookModel}) : super(key: key);

  final BookModel? bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              backGround: Colors.white,
              textColor: Colors.black,
              text: 'Free',
              borderRadius:  BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async {
                launchCustomUrl(context, bookModel!.volumeInfo.previewLink);
              },

              backGround: const Color(0xffEF8262),
              textColor: Colors.white,
              text: getText(bookModel!),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
  String getText(BookModel bookModel){
    if(!(bookModel.volumeInfo.previewLink==null)){
      return 'No Available';
    }else{
      return 'Preview';
    }
  }
}
