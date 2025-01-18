import 'package:bookly_app/core/Utils/styles.dart';
import 'package:flutter/cupertino.dart';

class CustomErrorWidget extends StatelessWidget {
   CustomErrorWidget({super.key,required this.errorMessage});
final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(errorMessage,style: Styles.textStyle18,));
  }
}
