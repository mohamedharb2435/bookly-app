import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchCustomUrl(BuildContext context, String?  url) async {
 if(url != null ){
   Uri uri = Uri.parse(url);
   if (await canLaunch(uri.toString())) {
     await launch(uri.toString());
   } else {
     ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(
         content: Text('Cannot launch $url'),
       ),
     );
   }
 }
}
