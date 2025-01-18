import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'custom SnackBar.dart';

Future<void> lunchCustomUr(context ,String? url)async{
  if(url != null){
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }else{
      customSnackBar(context, 'Cannot launch $url');
    }
  }


}
